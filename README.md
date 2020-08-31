# pscheduler-batch
Batch Runner for pScheduler

This is temporary development for a program that runs pScheduler tasks
in batches called _jobs_ and returns the results.  It will eventually
be folded into pSchedler as a command.

## Input

### Top-Level Object

```
{
    "global": { ... },
    "jobs": [ ... ]
}
```

### `global`

The `global` pair is an optional JSON object containing data and
transforms provided or applied to all jobs.  It contains the following
pairs, all optional:

`data` (Any JSON) - Data made available to all transforms (see
`transform-pre`, `transform-post` and `task-transform`, below) in a
variable named `$global`.

`transform-pre` (pScheduler JQ Transform) - A transform applied to all
jobs before anything else.

`transform-post` (pScheduler JQ Transform) - A transform applied to
all jobs after `transform-pre` and the job's `task-transform` have
been applied.


### `jobs`

Each job is a JSON object with the following pairs:

`label` (String) - A label for the job, used for reference in
debugging output.

`enabled` (Boolean) - Determines whether or not the job is run.
Defaults to `true`.

`iterations` (Number) - The number of times to run the specified task.

`parallel` (Boolean) - Whether or not the job's iterations should be
run in parallel.  This defaults to `false` and implies `sync-start`
(see below) unless `sync-start` is explicitly set `false`.

`setup-time` (Boolean) - The amount of time expected for pScheduler to
set up a single run.  The default of `PT15S` should be more than
sufficient in most cases.  This is ignored if not doing a synchronized
start (see `sync-start`, below).

`backoff` (String) - ISO8601 duration indicating how long each
iteration run in parallel waits before being submitted to pScheduler.
The first will have no backoff, the second will have the indicated
backoff, the third will have twice that, etc.  This value is ignored
if `parallel` is `false`.

`sync-start` (Boolean) - If running in parallel, set the start time of
all iterations to be the same.  The time is based on the `number` of
times the task is run, `backoff` and `setup-time`.  This value is
ignored if `parallel` is `false`.  Note that tasks subject to
restrictions on being run at the same time will not necessarily start
in sync (or at all if no `slip` is allowed as part of the task's
`schedule` section.

`task` (Object) - A pScheduler task specification as would be produced
using the `task` command's `--export` switch.

`task-transform` - A jq transform that operates the `task`'s value for
each iteration to make iteration-specific changes.  The `$iteration`
variable is provided to indicate which iteration (starting with `0`)
is being transformed.  The script should operate on the input in
place.


For example, this job will run five sequential `rtt` tests to
`www.perfsonar.net` with 5, 10, 15, 20 and 25 pings sent:

```
{
    "label": "rtt",
    "iterations": 5,
    "parallel": false,
    "task": {
	"test": {
	    "type": "rtt",
	    "spec": {
		"schema": 1,
		"dest": "www.perfsonar.net"
	    }
	}
    },
    "task-transform": {
	"script": [
	    ".test.spec.count = ($iteration + 1) * 5"
	]
    }
}
```

## Output

The program outputs the input as provided but adds an array of
`results`, each of which is the run as pulled from the pScheduler API
after the job completes.

```
{
    "label": "rtt",
    "iterations": 5,
    "parallel": false,
    "task": { ... },
    "task-transform": { ... },
    "results": [
        { "task": { ... }, "runs": [ { Run result 0 }, ..., { Run Result n } ] },
        { "task": { ... }, "runs": [ { Run result 0 }, ..., { Run Result n } ] },
        ...
        { "task": { ... }, "runs": [ { Run result 0 }, ..., { Run Result n } ] }
    ]
}
```

Each result is a JSON object containing the following pairs:

`task` (Object) - The task that was run.

`runs` (Array of Objects) - The run results produced by the task.
Each result is an object containing pairs named `application/json`,
`text/plain` and `text/html` for the pScheduler-supported output
formats.


## Known Deficiences

All results are held in memory until the whole batch is finished,
which could result in process growth.


## Tips and Tricks

### Running Different Tests as Part of the Same Job

Different tests can be run in parallel by using the `task-transform`
to alter the contents of the `test` pair for each iteration.

 * Put an array of the tests to be run in the task's `reference` pair.
   The length of the array should be the same as the specified
   `iterations`.

 * Leave the task's `test` section as an empty object (`{}`).

 * Add a `task-transform` that replaces the test with an element from
   the array (e.g., `.test = .reference.tests[$iteration]`).


This example runs a three-minute-long streaming latency test with a
throughput test to the same host during the second minute.  The
`backoff` value makes the througput test sleep for one minute before
it is scheduled and started so there's latency data produced
beforehand and afterward.

```
{
    "label": "different-in-parallel",
    "iterations": 2,
    "parallel": true,
    "backoff": "PT1M",
    "task": {
	"reference": {
	    "tests": [
		{
		    "type": "latencybg",
		    "spec": {
			"dest": "ps.example.net",
			"duration": "PT3M"
		    }
		},
		{
		    "type": "throughput",
		    "spec": {
			"dest": "ps.example.net",
			"duration": "PT1M"
		    }
		}
	    ]

	},
	"test": { "#": "This is intentionally empty" }
    },
    "task-transform": {
	"script": [
            "# Pluck the test out of the refernce section and replace",
            "# the test section of the task with its contents.",
            ".test = .reference.tests[$iteration]"
        ]
    }
}
```

# pscheduler-batch
Batch Runner for pScheduler

This is temporary development for a program that runs pScheduler tasks
in batches and returns the results.  It will eventually be folded into
pSchedler as a command.

## Input

### Top-Level Object

```
{
    "tasks": [ ... List of tasks ... ]
}
```

### Task

Each task is a JSON object with the following pairs:

`label` (String) - A label for the task, used for reference in debugging output.

`enabled` (Boolean) - Determines whether or not the task is run.  Defaults to `true`.

`number` (Number) - The number of times to run the task.

`parallel` (Boolean) - Whether or not the tasks should be run in
parallel.  This implies `sync-start` unless `sync-start` is explicitly
set `false`.

`setup-time` (Boolean) - The amount of time expected for pScheduler to
set up a single run.  The default of `PT15S` should be more than
sufficient in most cases.  This is ignored if not doing a synchronized
start (see `sync-start`).

`backoff` (String) - ISO8601 duration indicating how long each task
run in parallel waits before being submitted to pScheduler.  The first
will have no backoff, the second will have the indicated backoff, the
third will have twice that, etc.  This value is ignored if `parallel`
is `false`.

`sync-start` (Boolean) - If running in parallel, set the start time of
all tasks to be the same.  The time is based on the `number` of times
the task is run, `backoff` and `setup-time`.  This value is ignored if
`parallel` is `false`.  Note that tasks subject to restrictions on
being run at the same time will not necessarily start in sync (or at
all if not `slip` is allowed as part of the task's `schedule` section.

`task` (Object) - A pScheduler task specification as would be produced
using the `task` command's `--export` switch.

`task-transform` - A jq transform that operates the `task` section for
each iteration to make number-specific changes.  The `$number`
variable is provided to indicate which iteration (starting with `0`)
is being transformed.  The script should operate on the input in
place.


For example, this task will run five sequential `rtt` tests to
`www.perfsonar.net` with 5, 10, 15, 20 and 25 pings sent:

```
{
    "label": "rtt",
    "number": 5,
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
	    ".test.spec.count = ($number + 1) * 2"
	]
    }
}
```

## Output

The program outputs the input as provided but adds an array of
results, each of which is the run as pulled from the pScheduler API
after the task completes.

```
{
    "label": "rtt",
    "number": 5,
    "parallel": false,
    "task": { ... },
    "test-transform": { ... },
    "results": [
        [ { ... Run 0 Result 0... }, { ... Run 0 Result 1... }, ... ],
        [ { ... Run 1 Result 0... }, { ... Run 1 Result 1... }, ... ],
        [ { ... Run 2 Result 0... }, { ... Run 2 Result 1... }, ... ],
        [ { ... Run 3 Result 0... }, { ... Run 3 Result 1... }, ... ],
        [ { ... Run 4 Result 0... }, { ... Run 4 Result 1... }, ... ]
    ]
}
```

Each result is a JSON object containing the following pairs:

`application/json` (Object) - Result as raw JSON

`text/plain` (String) - Result as plain text.

`text/html` (String) - Result as HTML.


## Known Deficiences

The input is not validated for correctness.

All results are held in memory until the whole batch is finished,
which could result in process growth.

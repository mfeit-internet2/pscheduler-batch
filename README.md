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

`number` (Number) - The number of times to run the task.  If set to
zero, none will be run.

`parallel` (Boolean) - Whether or not the tasks should be run in
parallel.

`backoff` (String) - ISO8601 duration indicating how long each task
run in parallel waits before being submitted to pScheduler.  The first
will have no backoff, the second will have the indicated backoff, the
third will have twice that, etc.  This value is ignored if `parallel`
is `false`.

`task` (Object) - A pScheduler task specification as would be produced
using the `task` command's `--export` switch.

`test-transform` - A jq transform that operates on each iteration of
the task to make number-specific changes.  The `$number` variable is
provided to indicate which iteration (starting with `0`) is being
transformed.  The script should operate on the input in place.


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
    "test-transform": {
	"script": [
	    ".spec.count = ($number + 1) * 2"
	]
    }
}
```

## Output

The program outputs the input as provided but adds an array of
results, each of which is the run as pulled from the pScheduler API
after the task completes.

**NOTE:**  This format will change once multi-result tasks are supported.

```
{
    "label": "rtt",
    "number": 5,
    "parallel": false,
    "task": { ... },
    "test-transform": { ... },
    "results": [
        { ... Result 0 ... }, 
        { ... Result 1 ... }, 
        { ... Result 2 ... }, 
        { ... Result 3 ... },
        { ... Result 4 ... }
    ]
}
```

## Known Deficiences

The input is not validated for correctness.

Tasks that produce multiple runs (e.g., latencybg) are not yet
supported.

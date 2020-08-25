# pScheduler Batch Sample Run

This is an example of the debug output and results when running the
file `input.sample` as a batch.

```
$ make

./batch  --debug < input.sample < input.sample > result
2020-08-25T17:22:58 Debug started
2020-08-25T17:22:58 Started
2020-08-25T17:22:58 idle/0: Spec is {
2020-08-25T17:22:58     "schedule": {},
2020-08-25T17:22:58     "test": {
2020-08-25T17:22:58         "spec": {
2020-08-25T17:22:58             "duration": "PT2S",
2020-08-25T17:22:58             "schema": 1
2020-08-25T17:22:58         },
2020-08-25T17:22:58         "type": "idle"
2020-08-25T17:22:58     }
2020-08-25T17:22:58 }
2020-08-25T17:22:58 idle/0: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:00 idle/0: New task is https://localhost/pscheduler/tasks/40b7bb01-a8c5-4a44-a460-d0f0e9e725a9
2020-08-25T17:23:00 idle/0: First run is at https://localhost/pscheduler/tasks/40b7bb01-a8c5-4a44-a460-d0f0e9e725a9/runs/first
2020-08-25T17:23:01 idle/0: First run is https://localhost/pscheduler/tasks/40b7bb01-a8c5-4a44-a460-d0f0e9e725a9/runs/389f2246-b97a-4e09-a83a-bad5d3c20c8e
2020-08-25T17:23:01 idle/0: Waiting 6.408014 seconds for run to finish
2020-08-25T17:23:08 idle/0: Waiting for result at https://localhost/pscheduler/tasks/40b7bb01-a8c5-4a44-a460-d0f0e9e725a9/runs/389f2246-b97a-4e09-a83a-bad5d3c20c8e/result
2020-08-25T17:23:08 idle/0: Fetching run https://localhost/pscheduler/tasks/40b7bb01-a8c5-4a44-a460-d0f0e9e725a9/runs/389f2246-b97a-4e09-a83a-bad5d3c20c8e
2020-08-25T17:23:08 idle/0: Got application/json result
2020-08-25T17:23:08 idle/0: Got text/plain result
2020-08-25T17:23:08 idle/0: Got text/html result
2020-08-25T17:23:08 idle/1: Spec is {
2020-08-25T17:23:08     "schedule": {},
2020-08-25T17:23:08     "test": {
2020-08-25T17:23:08         "spec": {
2020-08-25T17:23:08             "duration": "PT2S",
2020-08-25T17:23:08             "schema": 1
2020-08-25T17:23:08         },
2020-08-25T17:23:08         "type": "idle"
2020-08-25T17:23:08     }
2020-08-25T17:23:08 }
2020-08-25T17:23:08 idle/1: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:11 idle/1: New task is https://localhost/pscheduler/tasks/ae5a7820-fae7-4989-8fa1-2f39254e3aae
2020-08-25T17:23:11 idle/1: First run is at https://localhost/pscheduler/tasks/ae5a7820-fae7-4989-8fa1-2f39254e3aae/runs/first
2020-08-25T17:23:12 idle/1: First run is https://localhost/pscheduler/tasks/ae5a7820-fae7-4989-8fa1-2f39254e3aae/runs/2d954fbc-8f00-40e8-821a-54bcb3094d39
2020-08-25T17:23:12 idle/1: Waiting 6.629414 seconds for run to finish
2020-08-25T17:23:19 idle/1: Waiting for result at https://localhost/pscheduler/tasks/ae5a7820-fae7-4989-8fa1-2f39254e3aae/runs/2d954fbc-8f00-40e8-821a-54bcb3094d39/result
2020-08-25T17:23:19 idle/1: Fetching run https://localhost/pscheduler/tasks/ae5a7820-fae7-4989-8fa1-2f39254e3aae/runs/2d954fbc-8f00-40e8-821a-54bcb3094d39
2020-08-25T17:23:19 idle/1: Got application/json result
2020-08-25T17:23:19 idle/1: Got text/plain result
2020-08-25T17:23:19 idle/1: Got text/html result
2020-08-25T17:23:19 idle/2: Spec is {
2020-08-25T17:23:19     "schedule": {},
2020-08-25T17:23:19     "test": {
2020-08-25T17:23:19         "spec": {
2020-08-25T17:23:19             "duration": "PT2S",
2020-08-25T17:23:19             "schema": 1
2020-08-25T17:23:19         },
2020-08-25T17:23:19         "type": "idle"
2020-08-25T17:23:19     }
2020-08-25T17:23:19 }
2020-08-25T17:23:19 idle/2: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:21 idle/2: New task is https://localhost/pscheduler/tasks/2909c4ca-046d-4794-8646-8e26eeeb75e5
2020-08-25T17:23:21 idle/2: First run is at https://localhost/pscheduler/tasks/2909c4ca-046d-4794-8646-8e26eeeb75e5/runs/first
2020-08-25T17:23:22 idle/2: First run is https://localhost/pscheduler/tasks/2909c4ca-046d-4794-8646-8e26eeeb75e5/runs/b3aa398f-d4e8-4459-b5b8-e31198a266d9
2020-08-25T17:23:22 idle/2: Waiting 6.336663 seconds for run to finish
2020-08-25T17:23:29 idle/2: Waiting for result at https://localhost/pscheduler/tasks/2909c4ca-046d-4794-8646-8e26eeeb75e5/runs/b3aa398f-d4e8-4459-b5b8-e31198a266d9/result
2020-08-25T17:23:29 idle/2: Fetching run https://localhost/pscheduler/tasks/2909c4ca-046d-4794-8646-8e26eeeb75e5/runs/b3aa398f-d4e8-4459-b5b8-e31198a266d9
2020-08-25T17:23:29 idle/2: Got application/json result
2020-08-25T17:23:29 idle/2: Got text/plain result
2020-08-25T17:23:29 idle/2: Got text/html result
2020-08-25T17:23:29 Parallel run of 5 tasks
2020-08-25T17:23:29 rtt/0: Spec is {
2020-08-25T17:23:29     "schedule": {},
2020-08-25T17:23:29     "test": {
2020-08-25T17:23:29         "spec": {
2020-08-25T17:23:29             "count": 1,
2020-08-25T17:23:29             "dest": "www.perfsonar.net",
2020-08-25T17:23:29             "schema": 1
2020-08-25T17:23:29         },
2020-08-25T17:23:29         "type": "rtt"
2020-08-25T17:23:29     }
2020-08-25T17:23:29 }
2020-08-25T17:23:29 rtt/0: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:29 rtt/1: Sleeping 1.0s before start
2020-08-25T17:23:29 rtt/2: Sleeping 2.0s before start
2020-08-25T17:23:29 rtt/3: Sleeping 3.0s before start
2020-08-25T17:23:29 rtt/4: Sleeping 4.0s before start
2020-08-25T17:23:30 rtt/1: Spec is {
2020-08-25T17:23:30     "schedule": {},
2020-08-25T17:23:30     "test": {
2020-08-25T17:23:30         "spec": {
2020-08-25T17:23:30             "count": 2,
2020-08-25T17:23:30             "dest": "www.perfsonar.net",
2020-08-25T17:23:30             "schema": 1
2020-08-25T17:23:30         },
2020-08-25T17:23:30         "type": "rtt"
2020-08-25T17:23:30     }
2020-08-25T17:23:30 }
2020-08-25T17:23:30 rtt/1: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:31 rtt/2: Spec is {
2020-08-25T17:23:31     "schedule": {},
2020-08-25T17:23:31     "test": {
2020-08-25T17:23:31         "spec": {
2020-08-25T17:23:31             "count": 3,
2020-08-25T17:23:31             "dest": "www.perfsonar.net",
2020-08-25T17:23:31             "schema": 1
2020-08-25T17:23:31         },
2020-08-25T17:23:31         "type": "rtt"
2020-08-25T17:23:31     }
2020-08-25T17:23:31 }
2020-08-25T17:23:31 rtt/2: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:32 rtt/0: New task is https://localhost/pscheduler/tasks/03657d3b-631f-4e60-b4ad-6476570c1d6f
2020-08-25T17:23:32 rtt/0: First run is at https://localhost/pscheduler/tasks/03657d3b-631f-4e60-b4ad-6476570c1d6f/runs/first
2020-08-25T17:23:32 rtt/3: Spec is {
2020-08-25T17:23:32     "schedule": {},
2020-08-25T17:23:32     "test": {
2020-08-25T17:23:32         "spec": {
2020-08-25T17:23:32             "count": 4,
2020-08-25T17:23:32             "dest": "www.perfsonar.net",
2020-08-25T17:23:32             "schema": 1
2020-08-25T17:23:32         },
2020-08-25T17:23:32         "type": "rtt"
2020-08-25T17:23:32     }
2020-08-25T17:23:32 }
2020-08-25T17:23:32 rtt/3: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:33 rtt/4: Spec is {
2020-08-25T17:23:33     "schedule": {},
2020-08-25T17:23:33     "test": {
2020-08-25T17:23:33         "spec": {
2020-08-25T17:23:33             "count": 5,
2020-08-25T17:23:33             "dest": "www.perfsonar.net",
2020-08-25T17:23:33             "schema": 1
2020-08-25T17:23:33         },
2020-08-25T17:23:33         "type": "rtt"
2020-08-25T17:23:33     }
2020-08-25T17:23:33 }
2020-08-25T17:23:33 rtt/4: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:33 rtt/0: First run is https://localhost/pscheduler/tasks/03657d3b-631f-4e60-b4ad-6476570c1d6f/runs/38586723-d65c-4a5d-96e2-dd03930fc357
2020-08-25T17:23:33 rtt/0: Waiting 10.114184 seconds for run to finish
2020-08-25T17:23:34 rtt/1: New task is https://localhost/pscheduler/tasks/2ce9d4ec-153a-48c3-a439-cd98308d643a
2020-08-25T17:23:34 rtt/1: First run is at https://localhost/pscheduler/tasks/2ce9d4ec-153a-48c3-a439-cd98308d643a/runs/first
2020-08-25T17:23:36 rtt/2: New task is https://localhost/pscheduler/tasks/10b879d8-0a1f-4578-b380-91aa1322ef53
2020-08-25T17:23:36 rtt/2: First run is at https://localhost/pscheduler/tasks/10b879d8-0a1f-4578-b380-91aa1322ef53/runs/first
2020-08-25T17:23:36 rtt/1: First run is https://localhost/pscheduler/tasks/2ce9d4ec-153a-48c3-a439-cd98308d643a/runs/181a5f4e-2836-480e-b2be-6cd80f9394f3
2020-08-25T17:23:36 rtt/1: Waiting 10.450868 seconds for run to finish
2020-08-25T17:23:37 rtt/2: First run is https://localhost/pscheduler/tasks/10b879d8-0a1f-4578-b380-91aa1322ef53/runs/a52c073a-c23b-48ae-854f-34314adf2171
2020-08-25T17:23:37 rtt/2: Waiting 12.626238 seconds for run to finish
2020-08-25T17:23:37 rtt/3: New task is https://localhost/pscheduler/tasks/599305b8-8d91-4b70-84d2-35ed1b36d5f3
2020-08-25T17:23:37 rtt/3: First run is at https://localhost/pscheduler/tasks/599305b8-8d91-4b70-84d2-35ed1b36d5f3/runs/first
2020-08-25T17:23:38 rtt/4: New task is https://localhost/pscheduler/tasks/4b0a7ea9-140d-4c72-b512-e8b36a32bbfe
2020-08-25T17:23:38 rtt/4: First run is at https://localhost/pscheduler/tasks/4b0a7ea9-140d-4c72-b512-e8b36a32bbfe/runs/first
2020-08-25T17:23:38 rtt/3: First run is https://localhost/pscheduler/tasks/599305b8-8d91-4b70-84d2-35ed1b36d5f3/runs/13737829-871b-4979-9f84-c3164265c874
2020-08-25T17:23:38 rtt/3: Waiting 13.199031 seconds for run to finish
2020-08-25T17:23:39 rtt/4: First run is https://localhost/pscheduler/tasks/4b0a7ea9-140d-4c72-b512-e8b36a32bbfe/runs/3b57669d-2e52-4894-8bc6-2056627d58e3
2020-08-25T17:23:39 rtt/4: Waiting 14.895056 seconds for run to finish
2020-08-25T17:23:44 rtt/0: Waiting for result at https://localhost/pscheduler/tasks/03657d3b-631f-4e60-b4ad-6476570c1d6f/runs/38586723-d65c-4a5d-96e2-dd03930fc357/result
2020-08-25T17:23:44 rtt/0: Fetching run https://localhost/pscheduler/tasks/03657d3b-631f-4e60-b4ad-6476570c1d6f/runs/38586723-d65c-4a5d-96e2-dd03930fc357
2020-08-25T17:23:44 rtt/0: Got application/json result
2020-08-25T17:23:44 rtt/0: Got text/plain result
2020-08-25T17:23:44 rtt/0: Got text/html result
2020-08-25T17:23:47 rtt/1: Waiting for result at https://localhost/pscheduler/tasks/2ce9d4ec-153a-48c3-a439-cd98308d643a/runs/181a5f4e-2836-480e-b2be-6cd80f9394f3/result
2020-08-25T17:23:47 rtt/1: Fetching run https://localhost/pscheduler/tasks/2ce9d4ec-153a-48c3-a439-cd98308d643a/runs/181a5f4e-2836-480e-b2be-6cd80f9394f3
2020-08-25T17:23:47 rtt/1: Got application/json result
2020-08-25T17:23:47 rtt/1: Got text/plain result
2020-08-25T17:23:47 rtt/1: Got text/html result
2020-08-25T17:23:50 rtt/2: Waiting for result at https://localhost/pscheduler/tasks/10b879d8-0a1f-4578-b380-91aa1322ef53/runs/a52c073a-c23b-48ae-854f-34314adf2171/result
2020-08-25T17:23:50 rtt/2: Fetching run https://localhost/pscheduler/tasks/10b879d8-0a1f-4578-b380-91aa1322ef53/runs/a52c073a-c23b-48ae-854f-34314adf2171
2020-08-25T17:23:50 rtt/2: Got application/json result
2020-08-25T17:23:50 rtt/2: Got text/plain result
2020-08-25T17:23:50 rtt/2: Got text/html result
2020-08-25T17:23:52 rtt/3: Waiting for result at https://localhost/pscheduler/tasks/599305b8-8d91-4b70-84d2-35ed1b36d5f3/runs/13737829-871b-4979-9f84-c3164265c874/result
2020-08-25T17:23:52 rtt/3: Fetching run https://localhost/pscheduler/tasks/599305b8-8d91-4b70-84d2-35ed1b36d5f3/runs/13737829-871b-4979-9f84-c3164265c874
2020-08-25T17:23:52 rtt/3: Got application/json result
2020-08-25T17:23:52 rtt/3: Got text/plain result
2020-08-25T17:23:52 rtt/3: Got text/html result
2020-08-25T17:23:54 rtt/4: Waiting for result at https://localhost/pscheduler/tasks/4b0a7ea9-140d-4c72-b512-e8b36a32bbfe/runs/3b57669d-2e52-4894-8bc6-2056627d58e3/result
2020-08-25T17:23:54 rtt/4: Fetching run https://localhost/pscheduler/tasks/4b0a7ea9-140d-4c72-b512-e8b36a32bbfe/runs/3b57669d-2e52-4894-8bc6-2056627d58e3
2020-08-25T17:23:54 rtt/4: Got application/json result
2020-08-25T17:23:54 rtt/4: Got text/plain result
2020-08-25T17:23:54 rtt/4: Got text/html result
2020-08-25T17:23:54 Nothing to run; continuing.
2020-08-25T17:23:54 idlebgm/0: Spec is {
2020-08-25T17:23:54     "schedule": {},
2020-08-25T17:23:54     "test": {
2020-08-25T17:23:54         "spec": {
2020-08-25T17:23:54             "duration": "PT15S",
2020-08-25T17:23:54             "interval": "PT3S",
2020-08-25T17:23:54             "schema": 1
2020-08-25T17:23:54         },
2020-08-25T17:23:54         "type": "idlebgm"
2020-08-25T17:23:54     }
2020-08-25T17:23:54 }
2020-08-25T17:23:54 idlebgm/0: Posting to https://localhost/pscheduler/tasks
2020-08-25T17:23:56 idlebgm/0: New task is https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4
2020-08-25T17:23:56 idlebgm/0: First run is at https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/first
2020-08-25T17:23:57 idlebgm/0: First run is https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/9d3067c8-b2d2-4c47-9d89-8a9748031a06
2020-08-25T17:23:57 idlebgm/0: Waiting 18.361116 seconds for run to finish
2020-08-25T17:24:16 idlebgm/0: Waiting for result at https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/9d3067c8-b2d2-4c47-9d89-8a9748031a06/result
2020-08-25T17:24:16 idlebgm/0: Fetching run https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/9d3067c8-b2d2-4c47-9d89-8a9748031a06
2020-08-25T17:24:16 idlebgm/0: Failed to get application/json: 404: Resource Not found.
2020-08-25T17:24:16 idlebgm/0: Failed to get text/plain: 404: Resource Not found.
2020-08-25T17:24:17 idlebgm/0: Failed to get text/html: 404: Resource Not found.
2020-08-25T17:24:17 idlebgm/0: Fetching run https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/cbca5955-a1e8-4eed-8454-ff7d8c364b0a
2020-08-25T17:24:17 idlebgm/0: Got application/json result
2020-08-25T17:24:17 idlebgm/0: Got text/plain result
2020-08-25T17:24:18 idlebgm/0: Got text/html result
2020-08-25T17:24:18 idlebgm/0: Fetching run https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/937fed71-0a1e-4a5e-b9e7-f31a14c17a19
2020-08-25T17:24:18 idlebgm/0: Got application/json result
2020-08-25T17:24:18 idlebgm/0: Got text/plain result
2020-08-25T17:24:18 idlebgm/0: Got text/html result
2020-08-25T17:24:18 idlebgm/0: Fetching run https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/f5e78909-0ce3-4741-951d-63b74262f100
2020-08-25T17:24:18 idlebgm/0: Got application/json result
2020-08-25T17:24:19 idlebgm/0: Got text/plain result
2020-08-25T17:24:19 idlebgm/0: Got text/html result
2020-08-25T17:24:19 idlebgm/0: Fetching run https://localhost/pscheduler/tasks/c248ceab-8fb2-4b66-a994-c14c317d3ef4/runs/bbaa58c4-ce92-46a5-a9de-e957fba44bb0
2020-08-25T17:24:19 idlebgm/0: Got application/json result
2020-08-25T17:24:19 idlebgm/0: Got text/plain result
2020-08-25T17:24:20 idlebgm/0: Got text/html result

## Result

```json
{
    "tasks": [
        {
            "label": "idle",
            "number": 3,
            "parallel": false,
            "results": [
                [
                    {
                        "application/json": {
                            "duration": "PT2S",
                            "schema": 1,
                            "succeeded": true
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Duration</b></td><td>\nPT2S\n</td></tr>\n</table>\n",
                        "text/plain": "Duration ... PT2S\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duration": "PT2S",
                            "schema": 1,
                            "succeeded": true
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Duration</b></td><td>\nPT2S\n</td></tr>\n</table>\n",
                        "text/plain": "Duration ... PT2S\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duration": "PT2S",
                            "schema": 1,
                            "succeeded": true
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Duration</b></td><td>\nPT2S\n</td></tr>\n</table>\n",
                        "text/plain": "Duration ... PT2S\n"
                    }
                ]
            ],
            "task": {
                "schedule": {},
                "test": {
                    "spec": {
                        "duration": "PT2S",
                        "schema": 1
                    },
                    "type": "idle"
                }
            }
        },
        {
            "backoff": "PT1S",
            "label": "rtt",
            "number": 5,
            "parallel": true,
            "results": [
                [
                    {
                        "application/json": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.014032S",
                            "mean": "PT0.014032S",
                            "min": "PT0.014032S",
                            "received": 1,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.110.153",
                                    "length": 64,
                                    "rtt": "PT0.014S",
                                    "seq": 1,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 1,
                            "stddev": "P0D",
                            "succeeded": true
                        },
                        "text/html": "<table>\n<tr>\n  <th>Packet</th>\n  <th>Address</th>\n  <th>Host</th>\n  <th>Length</th>\n  <th>RTT (ms)</th>\n</tr>\n<tr>\n  <th>1</th>\n  <td>185.199.110.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 14.0000</td>\n  <td></td>\n</tr>\n\n<tr>\n<td align=\"middle\" colspan=\"5\">0% Packet Loss<br/>RTT Min/Mean/Max/StdDev = 14.032000/14.032000/14.032000/0.000000 ms</td></tr>\n</table>\n",
                        "text/plain": "1\t185.199.110.153  64 Bytes  TTL 63  RTT  14.0000 ms\n\n0% Packet Loss  RTT Min/Mean/Max/StdDev = 14.032000/14.032000/14.032000/0.000000 ms\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.012573S",
                            "mean": "PT0.012127S",
                            "min": "PT0.011682S",
                            "received": 2,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0125S",
                                    "seq": 1,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0116S",
                                    "seq": 2,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 2,
                            "stddev": "PT0.000458S",
                            "succeeded": true
                        },
                        "text/html": "<table>\n<tr>\n  <th>Packet</th>\n  <th>Address</th>\n  <th>Host</th>\n  <th>Length</th>\n  <th>RTT (ms)</th>\n</tr>\n<tr>\n  <th>1</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 12.5000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>2</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 11.6000</td>\n  <td></td>\n</tr>\n\n<tr>\n<td align=\"middle\" colspan=\"5\">0% Packet Loss<br/>RTT Min/Mean/Max/StdDev = 11.682000/12.127000/12.573000/0.458000 ms</td></tr>\n</table>\n",
                        "text/plain": "1\t185.199.111.153  64 Bytes  TTL 63  RTT  12.5000 ms\n2\t185.199.111.153  64 Bytes  TTL 63  RTT  11.6000 ms\n\n0% Packet Loss  RTT Min/Mean/Max/StdDev = 11.682000/12.127000/12.573000/0.458000 ms\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.012711S",
                            "mean": "PT0.012162S",
                            "min": "PT0.011854S",
                            "received": 3,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0119S",
                                    "seq": 1,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0118S",
                                    "seq": 2,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0127S",
                                    "seq": 3,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 3,
                            "stddev": "PT0.000399S",
                            "succeeded": true
                        },
                        "text/html": "<table>\n<tr>\n  <th>Packet</th>\n  <th>Address</th>\n  <th>Host</th>\n  <th>Length</th>\n  <th>RTT (ms)</th>\n</tr>\n<tr>\n  <th>1</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 11.9000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>2</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 11.8000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>3</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 12.7000</td>\n  <td></td>\n</tr>\n\n<tr>\n<td align=\"middle\" colspan=\"5\">0% Packet Loss<br/>RTT Min/Mean/Max/StdDev = 11.854000/12.162000/12.711000/0.399000 ms</td></tr>\n</table>\n",
                        "text/plain": "1\t185.199.111.153  64 Bytes  TTL 63  RTT  11.9000 ms\n2\t185.199.111.153  64 Bytes  TTL 63  RTT  11.8000 ms\n3\t185.199.111.153  64 Bytes  TTL 63  RTT  12.7000 ms\n\n0% Packet Loss  RTT Min/Mean/Max/StdDev = 11.854000/12.162000/12.711000/0.399000 ms\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.018826S",
                            "mean": "PT0.013421S",
                            "min": "PT0.009529S",
                            "received": 4,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.109.153",
                                    "length": 64,
                                    "rtt": "PT0.00952S",
                                    "seq": 1,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.109.153",
                                    "length": 64,
                                    "rtt": "PT0.012S",
                                    "seq": 2,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.109.153",
                                    "length": 64,
                                    "rtt": "PT0.0132S",
                                    "seq": 3,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.109.153",
                                    "length": 64,
                                    "rtt": "PT0.0188S",
                                    "seq": 4,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 4,
                            "stddev": "PT0.003401S",
                            "succeeded": true
                        },
                        "text/html": "<table>\n<tr>\n  <th>Packet</th>\n  <th>Address</th>\n  <th>Host</th>\n  <th>Length</th>\n  <th>RTT (ms)</th>\n</tr>\n<tr>\n  <th>1</th>\n  <td>185.199.109.153</td>\n  <td></td>\n  <td>64</td>\n  <td>  9.5200</td>\n  <td></td>\n</tr>\n<tr>\n  <th>2</th>\n  <td>185.199.109.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 12.0000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>3</th>\n  <td>185.199.109.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 13.2000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>4</th>\n  <td>185.199.109.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 18.8000</td>\n  <td></td>\n</tr>\n\n<tr>\n<td align=\"middle\" colspan=\"5\">0% Packet Loss<br/>RTT Min/Mean/Max/StdDev = 9.529000/13.421000/18.826000/3.401000 ms</td></tr>\n</table>\n",
                        "text/plain": "1\t185.199.109.153  64 Bytes  TTL 63  RTT   9.5200 ms\n2\t185.199.109.153  64 Bytes  TTL 63  RTT  12.0000 ms\n3\t185.199.109.153  64 Bytes  TTL 63  RTT  13.2000 ms\n4\t185.199.109.153  64 Bytes  TTL 63  RTT  18.8000 ms\n\n0% Packet Loss  RTT Min/Mean/Max/StdDev = 9.529000/13.421000/18.826000/3.401000 ms\n"
                    }
                ],
                [
                    {
                        "application/json": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.021697S",
                            "mean": "PT0.0142S",
                            "min": "PT0.011208S",
                            "received": 5,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0118S",
                                    "seq": 1,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.013S",
                                    "seq": 2,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0216S",
                                    "seq": 3,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0112S",
                                    "seq": 4,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.111.153",
                                    "length": 64,
                                    "rtt": "PT0.0131S",
                                    "seq": 5,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 5,
                            "stddev": "PT0.003823S",
                            "succeeded": true
                        },
                        "text/html": "<table>\n<tr>\n  <th>Packet</th>\n  <th>Address</th>\n  <th>Host</th>\n  <th>Length</th>\n  <th>RTT (ms)</th>\n</tr>\n<tr>\n  <th>1</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 11.8000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>2</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 13.0000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>3</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 21.6000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>4</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 11.2000</td>\n  <td></td>\n</tr>\n<tr>\n  <th>5</th>\n  <td>185.199.111.153</td>\n  <td></td>\n  <td>64</td>\n  <td> 13.1000</td>\n  <td></td>\n</tr>\n\n<tr>\n<td align=\"middle\" colspan=\"5\">0% Packet Loss<br/>RTT Min/Mean/Max/StdDev = 11.208000/14.200000/21.697000/3.823000 ms</td></tr>\n</table>\n",
                        "text/plain": "1\t185.199.111.153  64 Bytes  TTL 63  RTT  11.8000 ms\n2\t185.199.111.153  64 Bytes  TTL 63  RTT  13.0000 ms\n3\t185.199.111.153  64 Bytes  TTL 63  RTT  21.6000 ms\n4\t185.199.111.153  64 Bytes  TTL 63  RTT  11.2000 ms\n5\t185.199.111.153  64 Bytes  TTL 63  RTT  13.1000 ms\n\n0% Packet Loss  RTT Min/Mean/Max/StdDev = 11.208000/14.200000/21.697000/3.823000 ms\n"
                    }
                ]
            ],
            "task": {
                "schedule": {},
                "test": {
                    "spec": {
                        "dest": "www.perfsonar.net",
                        "schema": 1
                    },
                    "type": "rtt"
                }
            },
            "test-transform": {
                "script": [
                    ".spec.count = $number + 1"
                ]
            }
        },
        {
            "label": "trace",
            "number": 0,
            "results": [],
            "task": {
                "test": {
                    "spec": {
                        "dest": "www.perfsonar.net",
                        "schema": 1
                    },
                    "type": "trace"
                }
            }
        },
        {
            "label": "idlebgm",
            "number": 1,
            "parallel": false,
            "results": [
                [
                    {
                        "application/json": {
                            "error": "404: Resource Not found.\n",
                            "succeeded": false
                        },
                        "text/html": {
                            "error": "404: Resource Not found.\n",
                            "succeeded": false
                        },
                        "text/plain": {
                            "error": "404: Resource Not found.\n",
                            "succeeded": false
                        }
                    },
                    {
                        "application/json": {
                            "succeeded": true,
                            "time-slept": "PT3S"
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Time Slept</b></td><td>\nPT3S\n</td></tr>\n</table>\n",
                        "text/plain": "Slept ... PT3S\n"
                    },
                    {
                        "application/json": {
                            "succeeded": true,
                            "time-slept": "PT3S"
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Time Slept</b></td><td>\nPT3S\n</td></tr>\n</table>\n",
                        "text/plain": "Slept ... PT3S\n"
                    },
                    {
                        "application/json": {
                            "succeeded": true,
                            "time-slept": "PT3S"
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Time Slept</b></td><td>\nPT3S\n</td></tr>\n</table>\n",
                        "text/plain": "Slept ... PT3S\n"
                    },
                    {
                        "application/json": {
                            "succeeded": true,
                            "time-slept": "PT3S"
                        },
                        "text/html": "<table border=\"0\">\n\n<tr><td><b>Time Slept</b></td><td>\nPT3S\n</td></tr>\n</table>\n",
                        "text/plain": "Slept ... PT3S\n"
                    }
                ]
            ],
            "task": {
                "schedule": {},
                "test": {
                    "spec": {
                        "duration": "PT15S",
                        "interval": "PT3S",
                        "schema": 1
                    },
                    "type": "idlebgm"
                }
            }
        }
    ]
}

```

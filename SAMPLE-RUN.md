# pScheduler Batch Sample Run

This is an example of the debug output and results when running the
file `input.sample` as a batch.

```
$ make

./batch  --debug < input.sample < input.sample > result

2020-08-25T15:35:07 Debug started
2020-08-25T15:35:07 Started
2020-08-25T15:35:07 Nothing to run; continuing.
2020-08-25T15:35:07 rtt/0: Spec is {
2020-08-25T15:35:07     "schedule": {},
2020-08-25T15:35:07     "test": {
2020-08-25T15:35:07         "spec": {
2020-08-25T15:35:07             "count": 1,
2020-08-25T15:35:07             "dest": "www.perfsonar.net",
2020-08-25T15:35:07             "schema": 1
2020-08-25T15:35:07         },
2020-08-25T15:35:07         "type": "rtt"
2020-08-25T15:35:07     }
2020-08-25T15:35:07 }
2020-08-25T15:35:07 rtt/0: Posting to https://localhost/pscheduler/tasks
2020-08-25T15:35:09 rtt/0: New task is https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec
2020-08-25T15:35:09 rtt/0: First run is at https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec/runs/first
2020-08-25T15:35:10 rtt/0: First run is https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec/runs/61ed68f6-649f-455f-99dc-e4369932cdfc
2020-08-25T15:35:10 rtt/0: Waiting 10.107954 seconds for run to finish
2020-08-25T15:35:21 rtt/0: Waiting for result at https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec/runs/61ed68f6-649f-455f-99dc-e4369932cdfc/result
2020-08-25T15:35:21 rtt/1: Spec is {
2020-08-25T15:35:21     "schedule": {},
2020-08-25T15:35:21     "test": {
2020-08-25T15:35:21         "spec": {
2020-08-25T15:35:21             "count": 2,
2020-08-25T15:35:21             "dest": "www.perfsonar.net",
2020-08-25T15:35:21             "schema": 1
2020-08-25T15:35:21         },
2020-08-25T15:35:21         "type": "rtt"
2020-08-25T15:35:21     }
2020-08-25T15:35:21 }
2020-08-25T15:35:21 rtt/1: Posting to https://localhost/pscheduler/tasks
2020-08-25T15:35:22 rtt/1: New task is https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71
2020-08-25T15:35:23 rtt/1: First run is at https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71/runs/first
2020-08-25T15:35:24 rtt/1: First run is https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71/runs/6f6fefc9-aada-46fb-9a58-da8c58fc1311
2020-08-25T15:35:24 rtt/1: Waiting 10.957318 seconds for run to finish
2020-08-25T15:35:35 rtt/1: Waiting for result at https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71/runs/6f6fefc9-aada-46fb-9a58-da8c58fc1311/result
2020-08-25T15:35:35 Nothing to run; continuing.

$ cat result 

{
    "tasks": [
        {
            "backoff": "PT0.5S",
            "label": "idle",
            "number": 0,
            "parallel": true,
            "results": [],
            "task": {
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
            "label": "rtt",
            "number": 2,
            "parallel": false,
            "results": [
                {
                    "added": "2020-08-25T15:35:09Z",
                    "duration": "P0D",
                    "end-time": "2020-08-25T15:35:14Z",
                    "errors": null,
                    "href": "https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec/runs/61ed68f6-649f-455f-99dc-e4369932cdfc",
                    "limit-diags": "No limits were applied",
                    "participant": 0,
                    "participant-data": {},
                    "participant-data-full": [
                        {}
                    ],
                    "participants": [
                        "localhost"
                    ],
                    "priority": null,
                    "result": {
                        "diags": "ping -n -c 1 -i 1.0 -W 1.0 185.199.108.153\n\nPING 185.199.108.153 (185.199.108.153) 56(84) bytes of data.\n64 bytes from 185.199.108.153: icmp_seq=1 ttl=63 time=12.9 ms\n\n--- 185.199.108.153 ping statistics ---\n1 packets transmitted, 1 received, 0% packet loss, time 0ms\nrtt min/avg/max/mdev = 12.929/12.929/12.929/0.000 ms\n",
                        "error": null,
                        "result": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.012929S",
                            "mean": "PT0.012929S",
                            "min": "PT0.012929S",
                            "received": 1,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.108.153",
                                    "length": 64,
                                    "rtt": "PT0.0129S",
                                    "seq": 1,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 1,
                            "stddev": "P0D",
                            "succeeded": true
                        },
                        "schema": 1,
                        "succeeded": true
                    },
                    "result-full": [
                        {
                            "diags": "ping -n -c 1 -i 1.0 -W 1.0 185.199.108.153\n\nPING 185.199.108.153 (185.199.108.153) 56(84) bytes of data.\n64 bytes from 185.199.108.153: icmp_seq=1 ttl=63 time=12.9 ms\n\n--- 185.199.108.153 ping statistics ---\n1 packets transmitted, 1 received, 0% packet loss, time 0ms\nrtt min/avg/max/mdev = 12.929/12.929/12.929/0.000 ms\n",
                            "error": null,
                            "result": {
                                "duplicates": 0,
                                "loss": 0.0,
                                "lost": 0,
                                "max": "PT0.012929S",
                                "mean": "PT0.012929S",
                                "min": "PT0.012929S",
                                "received": 1,
                                "reorders": 0,
                                "roundtrips": [
                                    {
                                        "ip": "185.199.108.153",
                                        "length": 64,
                                        "rtt": "PT0.0129S",
                                        "seq": 1,
                                        "ttl": 63
                                    }
                                ],
                                "schema": 1,
                                "sent": 1,
                                "stddev": "P0D",
                                "succeeded": true
                            },
                            "schema": 1,
                            "succeeded": true
                        }
                    ],
                    "result-href": "https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec/runs/61ed68f6-649f-455f-99dc-e4369932cdfc/result",
                    "result-merged": {
                        "duplicates": 0,
                        "loss": 0.0,
                        "lost": 0,
                        "max": "PT0.012929S",
                        "mean": "PT0.012929S",
                        "min": "PT0.012929S",
                        "received": 1,
                        "reorders": 0,
                        "roundtrips": [
                            {
                                "ip": "185.199.108.153",
                                "length": 64,
                                "rtt": "PT0.0129S",
                                "seq": 1,
                                "ttl": 63
                            }
                        ],
                        "schema": 1,
                        "sent": 1,
                        "stddev": "P0D",
                        "succeeded": true
                    },
                    "start-time": "2020-08-25T15:35:14Z",
                    "state": "finished",
                    "state-display": "Finished",
                    "task-href": "https://localhost/pscheduler/tasks/8b17d564-d10e-4cd9-90a0-fc82dd8aaaec"
                },
                {
                    "added": "2020-08-25T15:35:23Z",
                    "duration": "PT1S",
                    "end-time": "2020-08-25T15:35:28Z",
                    "errors": null,
                    "href": "https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71/runs/6f6fefc9-aada-46fb-9a58-da8c58fc1311",
                    "limit-diags": "No limits were applied",
                    "participant": 0,
                    "participant-data": {},
                    "participant-data-full": [
                        {}
                    ],
                    "participants": [
                        "localhost"
                    ],
                    "priority": null,
                    "result": {
                        "diags": "ping -n -c 2 -i 1.0 -W 1.0 185.199.108.153\n\nPING 185.199.108.153 (185.199.108.153) 56(84) bytes of data.\n64 bytes from 185.199.108.153: icmp_seq=1 ttl=63 time=12.8 ms\n64 bytes from 185.199.108.153: icmp_seq=2 ttl=63 time=14.3 ms\n\n--- 185.199.108.153 ping statistics ---\n2 packets transmitted, 2 received, 0% packet loss, time 1001ms\nrtt min/avg/max/mdev = 12.883/13.601/14.320/0.727 ms\n",
                        "error": null,
                        "result": {
                            "duplicates": 0,
                            "loss": 0.0,
                            "lost": 0,
                            "max": "PT0.01432S",
                            "mean": "PT0.013601S",
                            "min": "PT0.012883S",
                            "received": 2,
                            "reorders": 0,
                            "roundtrips": [
                                {
                                    "ip": "185.199.108.153",
                                    "length": 64,
                                    "rtt": "PT0.0128S",
                                    "seq": 1,
                                    "ttl": 63
                                },
                                {
                                    "ip": "185.199.108.153",
                                    "length": 64,
                                    "rtt": "PT0.0143S",
                                    "seq": 2,
                                    "ttl": 63
                                }
                            ],
                            "schema": 1,
                            "sent": 2,
                            "stddev": "PT0.000727S",
                            "succeeded": true
                        },
                        "schema": 1,
                        "succeeded": true
                    },
                    "result-full": [
                        {
                            "diags": "ping -n -c 2 -i 1.0 -W 1.0 185.199.108.153\n\nPING 185.199.108.153 (185.199.108.153) 56(84) bytes of data.\n64 bytes from 185.199.108.153: icmp_seq=1 ttl=63 time=12.8 ms\n64 bytes from 185.199.108.153: icmp_seq=2 ttl=63 time=14.3 ms\n\n--- 185.199.108.153 ping statistics ---\n2 packets transmitted, 2 received, 0% packet loss, time 1001ms\nrtt min/avg/max/mdev = 12.883/13.601/14.320/0.727 ms\n",
                            "error": null,
                            "result": {
                                "duplicates": 0,
                                "loss": 0.0,
                                "lost": 0,
                                "max": "PT0.01432S",
                                "mean": "PT0.013601S",
                                "min": "PT0.012883S",
                                "received": 2,
                                "reorders": 0,
                                "roundtrips": [
                                    {
                                        "ip": "185.199.108.153",
                                        "length": 64,
                                        "rtt": "PT0.0128S",
                                        "seq": 1,
                                        "ttl": 63
                                    },
                                    {
                                        "ip": "185.199.108.153",
                                        "length": 64,
                                        "rtt": "PT0.0143S",
                                        "seq": 2,
                                        "ttl": 63
                                    }
                                ],
                                "schema": 1,
                                "sent": 2,
                                "stddev": "PT0.000727S",
                                "succeeded": true
                            },
                            "schema": 1,
                            "succeeded": true
                        }
                    ],
                    "result-href": "https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71/runs/6f6fefc9-aada-46fb-9a58-da8c58fc1311/result",
                    "result-merged": {
                        "duplicates": 0,
                        "loss": 0.0,
                        "lost": 0,
                        "max": "PT0.01432S",
                        "mean": "PT0.013601S",
                        "min": "PT0.012883S",
                        "received": 2,
                        "reorders": 0,
                        "roundtrips": [
                            {
                                "ip": "185.199.108.153",
                                "length": 64,
                                "rtt": "PT0.0128S",
                                "seq": 1,
                                "ttl": 63
                            },
                            {
                                "ip": "185.199.108.153",
                                "length": 64,
                                "rtt": "PT0.0143S",
                                "seq": 2,
                                "ttl": 63
                            }
                        ],
                        "schema": 1,
                        "sent": 2,
                        "stddev": "PT0.000727S",
                        "succeeded": true
                    },
                    "start-time": "2020-08-25T15:35:27Z",
                    "state": "finished",
                    "state-display": "Finished",
                    "task-href": "https://localhost/pscheduler/tasks/cf9f889f-4ba1-4106-aaf7-6022623b8d71"
                }
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
        }
    ]
}
```

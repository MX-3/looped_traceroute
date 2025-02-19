A powerShell script that runs traceroute (tracert) in a loop. Includes timestamp and device hostname. Prints to console & saves to a file (same directory as where the .ps1 script is stored).

# Example output:
```
---------------------------------------
Trace count:    37
Time:           19/02/2025 13:07
Hostname:       REDACTED

Tracing route to 10.11.12.13 over a maximum of 30 hops

  1     2 ms     1 ms     1 ms  192.168.0.1
  2    25 ms    24 ms    26 ms  10.11.12.13

Trace complete.
---------------------------------------
Trace count:    38
Time:           19/02/2025 13:07
Hostname:       REDACTED


Tracing route to 10.11.12.13 over a maximum of 30 hops

  1     2 ms     1 ms     3 ms  192.168.0.1
  2    26 ms    25 ms    25 ms  10.11.12.13

Trace complete.
---------------------------------------
```

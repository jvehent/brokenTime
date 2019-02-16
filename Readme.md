BrokenTime
----------

Go 1.10 caches test results, which has the interesting impact of caching the
value of `time.Now()` as well. I got bitten by this, and wrote this small
experiment to check my own sanity.

`run.sh` will show the value of `time.Now()` with caching enabled then disabled.



BrokenTime
----------

Go 1.10 caches test results, which has the interesting impact of caching the
value of `time.Now()` as well. I got bitten by this, and wrote this small
experiment to check my own sanity.

`run.sh` will show the value of `time.Now()` with caching enabled then disabled.

```bash
$ bash run.sh
_______________________________
System date: Sat Feb 16 14:08:50 UTC 2019
Date with Go Test caching: time.Now()=2019-02-16 13:58:39.5617734 +0000 UTC
Date without Go Test caching: time.Now()=2019-02-16 14:08:52.5226119 +0000 UTC
```

The fix, as documented in the [Go 1.10 release
note](https://golang.org/doc/go1.10#test), is to set `-count=1` on the go test
command line.

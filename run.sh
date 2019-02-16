#!/usr/bin/env bash
while true; do
    echo _______________________________
    echo -n "System date: "; date --utc
    echo -n "Date with Go Test caching: "
    go test -v github.com/jvehent/brokenTime | grep 'time.Now'
    echo -n "Date without Go Test caching: "
    go test -v -count=1 github.com/jvehent/brokenTime | grep 'time.Now'
    echo
    sleep 10
done

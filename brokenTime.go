package brokentime

import (
	"fmt"
	"time"
)

func printTime() {
	fmt.Printf("time.Now()=%s\n", time.Now().UTC())
}

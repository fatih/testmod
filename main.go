package main

import (
	"fmt"

	"github.com/fatih/testmod/bar"
	"github.com/fatih/testmod/foo"
)

func main() {
	fmt.Println(foo.Foo)
	fmt.Println(bar.Bar)
}

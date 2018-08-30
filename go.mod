module github.com/fatih/testmod

require (
	github.com/fatih/testmod/bar v1.0.0
	github.com/fatih/testmod/foo v1.0.0
)

replace github.com/fatih/testmod/bar v1.0.0 => ./bar

replace github.com/fatih/testmod/foo v1.0.0 => ./foo

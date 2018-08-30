# testmod


`git clone` this package outside GOPATH and try to build it with Go `v1.11`.


# Steps to reproduce

1. Initialize `main` package:

```
go mod init github.com/fatih/testmod
```

2. Initialize dependencies of `main` package:

```
cd foo
go mod init github.com/fatih/testmod/foo

cd bar
go mod init github.com/fatih/testmod/bar
```

3. Add explicit `require` 

```
go mod edit -require github.com/fatih/testmod/foo@v1.0.0
go mod edit -require github.com/fatih/testmod/bar@v1.0.0
```

4. Run `go build`:

```
$ go build
go: finding github.com/fatih/testmod/foo v1.0.0
go: finding github.com/fatih/testmod/bar v1.0.0
go: github.com/fatih/testmod/foo@v1.0.0: unknown revision foo/v1.0.0
go: github.com/fatih/testmod/bar@v1.0.0: unknown revision bar/v1.0.0
go: error loading module requirements
```

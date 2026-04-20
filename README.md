<p align="center">
  <img src="https://raw.githubusercontent.com/zgalor/weberr/master/img/weberr-logo.png" alt="weberr logo">
</p>

# weberr
Package weberr based on https://github.com/pkg/errors with a few additions:
* Set an error type that corresponds to HTTP status returned by this error
* Set a user friendly error message (in addition to the error message that will be logged)
* Add arbitrary details to the error

[![Go Report Card](https://goreportcard.com/badge/github.com/zgalor/weberr)](https://goreportcard.com/report/github.com/zgalor/weberr)
[![Build Status](https://travis-ci.org/zgalor/weberr.svg?branch=master)](https://travis-ci.org/zgalor/weberr)
[![GoDoc](https://godoc.org/github.com/zgalor/weberr?status.svg)](https://godoc.org/github.com/zgalor/weberr)
[![License](https://img.shields.io/badge/License-BSD--2--Clause-blue.svg)](https://opensource.org/licenses/BSD-2-Clause)

`go get github.com/zgalor/weberr`

[Read the package documentation for more information](https://godoc.org/github.com/zgalor/weberr).

## Divergences from pkg/errors

* We chose `weberr.Wrapf(nil, ...)` and similar wrapping functions should return a new error, whereas `errors.Wrapf(nil, ...)` historically returns nil.

## License

BSD-2-Clause

## Logo

[ awesome logo image by [gophers...](https://github.com/egonelbre/gophers) ]

## Installation

```bash
go get github.com/openshift-online/weberr
```

Or in more recent Go versions:

```bash
go get github.com/openshift-online/weberr@latest
```

## Usage

```go
import "github.com/openshift-online/weberr"

// Create a typed error with an HTTP status
err := weberr.New(http.StatusNotFound, "resource not found")

// Wrap an existing error with HTTP context
err = weberr.Wrap(err, http.StatusInternalServerError, "failed to process request")

// Set a user-friendly message
err = weberr.WithUserMessage(err, "Something went wrong, please try again")

// Retrieve the HTTP status code
code := weberr.HTTPStatusCode(err)  // returns 500
```

## Development

```bash
go test ./...         # Run all tests
go vet ./...          # Run static analysis
```

### Contributing

1. Fork this repository
2. Create a feature branch from `master`
3. Make your changes with tests
4. Submit a pull request

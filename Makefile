.PHONY: build test fmt vet clean

build:
	go build ./...

test:
	go test ./... -v

fmt:
	gofmt -w .

vet:
	go vet ./...

clean:
	go clean ./...

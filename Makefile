TEST?=./...

default: test

dev:
	go build ./...

test:
	"$(CURDIR)/scripts/test.sh"

testrace:
	go test -race $(TEST) $(TESTARGS)

updatedeps:
	go get -d -v -p 2 ./...

.PHONY: bin default dev test updatedeps

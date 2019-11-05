#!/bin/bash

go get ./...

for GOOS in ${_GOOS}
do
  for GOARCH in ${_GOARCH}
  do
    export GOOS GOARCH
    echo "Building ${GOOS}-${GOARCH}"
    go build -o ${artifacts}/${app}-$GOOS-$GOARCH ${src}/*.go
  done
done


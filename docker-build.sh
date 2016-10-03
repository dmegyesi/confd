#!/bin/bash

docker build -t confd_builder -f Dockerfile.build.alpine .
docker run -ti --rm -v $(pwd):/app -e GOOS=linux -e GOARCH=amd64 confd_builder ./build

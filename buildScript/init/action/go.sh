#!/bin/bash
set -e

source buildScript/init/env.sh
mkdir -p $GOPATH
cd $golang

if [ ! -f "go/bin/go" ]; then
    curl -Lso go.tar.gz https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
    echo "d0398903a16ba2232b389fb31032ddf57cac34efda306a0eebac34f0965a0742 go.tar.gz" | sha256sum -c -
    tar xzf go.tar.gz
fi

go version
go env
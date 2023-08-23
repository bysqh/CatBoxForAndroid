#!/bin/bash
set -e

source buildScript/init/env.sh
mkdir -p $PWD/build/golang
cd $golang

curl -Lso go.tar.gz https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
echo "d0398903a16ba2232b389fb31032ddf57cac34efda306a0eebac34f0965a0742 go.tar.gz" | sha256sum -c -
tar xzf go.tar.gz

go version
go env
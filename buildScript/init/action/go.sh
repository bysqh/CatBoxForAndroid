#!/bin/bash
set -e

source buildScript/init/env.sh
mkdir -p $PWD/build/golang
cd $golang

curl -Lso go.tar.gz https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
echo "b3075ae1ce5dab85f89bc7905d1632de23ca196bd8336afd93fa97434cfa55ae go.tar.gz" | sha256sum -c -
tar xzf go.tar.gz

go version
go env
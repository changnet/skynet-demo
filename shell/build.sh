#!/bin/bash

# just bash, not sh
set -e
set -o pipefail

SRV_DIR=../server

cd ../skynet

# cd 3rd/jemalloc & make clean

make clean
mkdir -p $SRV_DIR/bin
make SKYNET_BUILD_PATH=$SRV_DIR/bin LUA_CLIB_PATH=$SRV_DIR/luaclib CSERVICE_PATH=$SRV_DIR/cservice linux

# 复制其他lua文件

cp -rf examples $SRV_DIR/
cp -rf lualib $SRV_DIR/
cp -rf service $SRV_DIR/
cp -rf test $SRV_DIR/

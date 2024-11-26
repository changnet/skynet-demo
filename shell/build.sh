#!/bin/sh

set -e
set -o pipefail

cd ../skynet

# cd 3rd/jemalloc & make clean

make clean
make linux


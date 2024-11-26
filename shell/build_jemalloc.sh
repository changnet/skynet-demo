#!/bin/bash

# just bash, not sh
set -e
set -o pipefail


JE_DIR=../skynet/3rd/jemalloc
# wget -O jemalloc-5.3.0.tar.gz https://github.com/jemalloc/jemalloc/archive/refs/tags/5.3.0.tar.gz
tar -zxvf jemalloc-5.3.0.tar.gz --strip-components=1 -C $JE_DIR

# 解压就行，skynet会自动构建

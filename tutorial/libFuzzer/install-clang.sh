#!/bin/bash
CLANG_VERSION=17.0.4
UBUNTU_VERSION=22.04
CLANG_DIR=clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION
CLANG_TAR=${CLANG_DIR}.tar.xz

wget https://github.com/llvm/llvm-project/releases/download/llvmorg-${CLANG_VERSION}/$CLANG_TAR
tar -xf $CLANG_TAR
rm $CLANG_TAR
sudo rm -rf /usr/local/bin/clang* /usr/local/lib/clang
sudo cp -rf  $CLANG_DIR/bin/*  /usr/local/bin
sudo cp -rf  $CLANG_DIR/lib/clang  /usr/local/lib
rm -rf $CLANG_DIR

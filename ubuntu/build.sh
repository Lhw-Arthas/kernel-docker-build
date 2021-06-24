#!/bin/sh
chmod a+x *.sh
docker build --build-arg kernel_ver=5.12.13 -t ubuntu-kernel-build .
mkdir artifacts
docker run --rm -v $(pwd)/artifacts:/root/outkerneldeb ubuntu-kernel-build
docker rmi ubuntu-kernel-build

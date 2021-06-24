#!/bin/sh
chmod a+x *.sh
docker build --build-arg kernel_ver=5.12.13 -t centos7-kernel-build .
mkdir artifacts
docker run --rm -v $(pwd)/artifacts:/root/outkernelrpm centos7-kernel-build
docker rmi centos7-kernel-build

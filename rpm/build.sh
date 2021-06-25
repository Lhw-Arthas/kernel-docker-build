#!/bin/sh
chmod a+x *.sh
docker build --build-arg kernel_ver=5.12.13 -t rpm-kernel-build .
mkdir artifacts
docker run --rm -v $(pwd)/artifacts:/root/outkernelrpm rpm-kernel-build
docker rmi rpm-kernel-build

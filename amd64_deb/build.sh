#!/bin/sh
chmod a+x *.sh
docker build --build-arg kernel_ver=5.12.13 -t deb-kernel-build .
mkdir artifacts
docker run --rm -v $(pwd)/artifacts:/root/outkerneldeb deb-kernel-build
docker rmi deb-kernel-build

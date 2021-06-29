#!/bin/sh
BUILD_IMG_NAME=deb-kernel-arm64-build
chmod a+x *.sh
docker build --build-arg kernel_ver=5.12.13 -t ${BUILD_IMG_NAME} .
mkdir artifacts
docker run --rm -v $(pwd)/artifacts:/root/outkerneldeb ${BUILD_IMG_NAME}
docker rmi ${BUILD_IMG_NAME}

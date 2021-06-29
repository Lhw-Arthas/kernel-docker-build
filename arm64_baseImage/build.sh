#!/bin/sh
docker pull ubuntu
docker build -t lhwarthas/kernel-build-base:arm64 .
docker push lhwarthas/kernel-build-base:arm64
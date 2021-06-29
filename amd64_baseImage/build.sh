#!/bin/sh
docker pull ubuntu
docker build -t lhwarthas/kernel-build-base .
docker push lhwarthas/kernel-build-base
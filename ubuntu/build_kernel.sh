#!/bin/sh
CPUS=`cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l`
mkdir -p /root/outkerneldeb
cd /root
LARGE_VER=`echo $LINUX_VERSION | cut -d "." -f1`
wget https://mirrors.ustc.edu.cn/kernel.org/linux/kernel/v${LARGE_VER}.x/linux-${LINUX_VERSION}.tar.xz
tar -xvf linux-${LINUX_VERSION}.tar.xz
cd /root/linux-${LINUX_VERSION}
cp /root/config/config /root/linux-${LINUX_VERSION}/.config
make deb-pkg -j${CPUS}
cp /root/*.deb /root/outkerneldeb
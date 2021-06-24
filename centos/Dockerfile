FROM centos:7
RUN yum makecache fast \
    && yum -y groupinstall "development tools" \
    && yum -y install wget ncurses-devel centos-release-scl openssl openssl-devel elfutils-libelf-devel \
    && yum -y install devtoolset-9-toolchain \
    && yum clean all \
    && rm -rf /var/cache/yum
ARG kernel_ver=5.12.13
ENV LINUX_VERSION=${kernel_ver}
COPY build_kernel.sh /root
COPY config/config /root/config/config
RUN chmod +x /root/build_kernel.sh
CMD /root/build_kernel.sh
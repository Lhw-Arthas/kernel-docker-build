FROM ubuntu
RUN apt-get update \
    && apt-get install -y ca-certificates wget xz-utils make gcc libncurses-dev bc libssl-dev flex bison libelf-dev dpkg-dev rsync kmod cpio python3 liblz4-tool \
    && rm -rf /var/lib/apt/lists/*
ARG kernel_ver=5.12.13
ENV LINUX_VERSION=${kernel_ver}
COPY build_kernel.sh /root
COPY config/config /root/config/config
RUN chmod +x /root/build_kernel.sh
CMD /root/build_kernel.sh
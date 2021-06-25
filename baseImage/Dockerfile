##lhwarthas/kernel-build-base
FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y ca-certificates wget xz-utils make gcc libncurses-dev bc libssl-dev flex bison libelf-dev dpkg-dev rsync kmod cpio python3 liblz4-tool rpm \
    && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog
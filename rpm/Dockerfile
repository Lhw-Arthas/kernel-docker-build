FROM lhwarthas:kernel-build-base
ARG kernel_ver=5.12.13
ENV LINUX_VERSION=${kernel_ver}
COPY build_kernel.sh /root
COPY config/config /root/config/config
RUN chmod +x /root/build_kernel.sh
CMD /root/build_kernel.sh
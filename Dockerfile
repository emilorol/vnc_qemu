FROM ubuntu:18.04
COPY entrypoint.sh /
RUN apt update && \
    apt -y upgrade && \
    apt -y install xvfb x11-utils x11vnc qemu
RUN mkdir /images && \
    chmod -R 777 /images && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


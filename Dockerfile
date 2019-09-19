FROM ubuntu:18.04
RUN apt update && \
    apt -y upgrade && \
    apt -y install xvfb x11-utils x11vnc qemu && \
    mkdir /images && \
    chmod -R 777 /images && \
    rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

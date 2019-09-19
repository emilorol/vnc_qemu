FROM ubuntu:18.04
RUN apt update && \
    apt -y upgrade && \
    apt -y install xvfb x11-utils x11vnc qemu
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

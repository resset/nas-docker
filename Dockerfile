FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USERNAME
ARG UID

ENV MOUNT_DIR=/poky

RUN apt-get update
RUN apt-get install -y \
    gawk \
    wget \
    git-core \
    diffstat \
    unzip \
    texinfo \
    gcc-multilib \
    build-essential \
    chrpath \
    socat \
    cpio \
    python \
    python3 \
    python3-pip \
    python3-pexpect \
    xz-utils \
    debianutils \
    iputils-ping \
    ncurses-dev
RUN ln -sf /bin/bash /bin/sh
RUN useradd -m -s /bin/bash -u $UID $USERNAME

WORKDIR $MOUNT_DIR

CMD [ "/bin/bash" ]

FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USERNAME
ARG UID

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
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
    ncurses-dev \
    vim \
    mc \
    locales
RUN locale-gen en_US.UTF-8
RUN ln -sf /bin/bash /bin/sh
RUN useradd -m -s /bin/bash -u $UID $USERNAME

WORKDIR $MOUNT_DIR

CMD [ "/bin/bash" ]

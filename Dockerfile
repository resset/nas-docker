# This file was copied from here: https://github.com/bstubert/cuteradio/blob/master/Dockerfile
# https://www.embeddeduse.com/2019/02/11/using-docker-containers-for-yocto-builds/
# Thanks to the original author!

FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y \
    gawk \
    wget \
    git \
    diffstat \
    unzip \
    texinfo \
    gcc \
    build-essential \
    chrpath \
    socat \
    cpio \
    python3 \
    python3-pip \
    python3-pexpect \
    xz-utils \
    debianutils \
    iputils-ping \
    python3-git \
    python3-jinja2 \
    libegl1-mesa \
    libsdl1.2-dev \
    pylint3 \
    xterm \
    python3-subunit \
    mesa-common-dev \
    ncurses-dev \
    vim \
    mc \
    locales \
    screen \
    tmux

RUN rm /bin/sh && ln -s bash /bin/sh

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV USER_NAME nas

ARG host_uid=1000
ARG host_gid=1000
RUN groupadd -g $host_gid $USER_NAME && useradd -g $host_gid -m -s /bin/bash -u $host_uid $USER_NAME

USER $USER_NAME

ENV BUILD_DIR /home/$USER_NAME/poky
RUN mkdir -p $BUILD_DIR

WORKDIR $BUILD_DIR

ENV TEMPLATECONF=$BUILD_DIR/meta-nas/custom

CMD source $BUILD_DIR/oe-init-build-env && /bin/bash

#!/bin/bash

sudo docker build --no-cache --build-arg "host_uid=$(id -u)" --build-arg "host_gid=$(id -g)" --tag nas_docker .

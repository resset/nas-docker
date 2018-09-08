#!/bin/bash

sudo docker build --build-arg USERNAME="$USER" --build-arg UID="$UID" -t nas_docker https://github.com/resset/nas-docker.git

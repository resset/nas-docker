#!/bin/bash

sudo docker run \
    -it \
    --rm \
    --network=host \
    --hostname=nas-build \
    -v "$(realpath ../poky)":/home/nas/poky \
    -v /home/pillot/.gitconfig:/home/nas/.gitconfig:ro \
    nas_docker

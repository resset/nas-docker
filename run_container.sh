#!/bin/bash

sudo docker run \
    -it \
    --rm \
    --network=host \
    --hostname=nas-build \
    --user="$USER" \
    -v "$(realpath ./poky)":/poky \
    -v /home/"$USER"/.gitconfig:/home/"$USER"/.gitconfig:ro \
    nas_docker

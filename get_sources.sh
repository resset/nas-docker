#!/bin/bash

cd ../

git clone git://git.yoctoproject.org/poky -b sumo

cd poky/

git clone https://github.com/linux-sunxi/meta-sunxi.git -b sumo

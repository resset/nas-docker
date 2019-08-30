#!/bin/bash

cd ../

git clone git://git.yoctoproject.org/poky -b warrior

cd poky/

git clone https://github.com/linux-sunxi/meta-sunxi.git -b warrior

#!/bin/bash

cd ../

git clone git://git.yoctoproject.org/poky -b warrior

cd poky/

git clone https://github.com/openembedded/meta-openembedded.git -b warrior
git clone https://github.com/linux-sunxi/meta-sunxi.git -b warrior
git clone https://github.com/resset/meta-nas.git

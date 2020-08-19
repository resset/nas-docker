#!/bin/bash

cd ../

git clone git://git.yoctoproject.org/poky -b dunfell

cd poky/

git clone https://github.com/openembedded/meta-openembedded.git -b dunfell
git clone https://github.com/linux-sunxi/meta-sunxi.git -b dunfell
git clone https://github.com/resset/meta-nas.git

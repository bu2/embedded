#!/usr/bin/env bash

mkdir -p yocto
cd yocto

echo 'Git clone Poky (Yocto master build tool)'
[[ ! -d poky ]] && time git clone git://git.yoctoproject.org/poky

cd poky
echo 'Update Poky'
time git pull origin master

cd

#!/usr/bin/env bash
time (
    echo 'Update system packages'
    time ( apt-get update && apt-get upgrade -y )

    echo 'Install some usefull packages'
    PACKAGES=(htop gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath libsdl1.2-dev xterm)
    apt-get install -y ${PACKAGES[*]}
    apt-get build-dep -y qemu

    echo 'Total time to provisioning VM:'
)

time (
    echo 'Bootstrap tools'
    sudo su - vagrant -- /home/vagrant/.bootstrap_tools.sh

    echo 'Total provisioning tools:'
)

#!/bin/bash

# Run this script as sudo

# Install cmake.
curl -s https://cmake.org/files/v3.5/cmake-3.5.0-Linux-x86_64.sh

# Required
apt-get install -y build-essential curl wget
apt-get install -y git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

git clone https://github.com/Itseez/opencv.git opencv
cd opencv
mkdir release 
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
make install

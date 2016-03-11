#!/bin/bash

# See:
#	* http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html#linux-installation

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
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON ..
make -j
make install

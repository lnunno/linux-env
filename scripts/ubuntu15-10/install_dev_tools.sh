#!/bin/bash

sudo apt-get -y install \
    build-essential     \
    clang               \
    clang-format-3.7    \
    tmux                \
    scala               \
    git                 \
    cmake               \
    zsh                 \
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

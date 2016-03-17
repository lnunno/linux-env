#!/bin/bash

sudo apt-get -y install \
    vim                 \
    build-essential     \
    clang               \
    clang-format-3.7    \
    tmux                \
    scala               \
    git                 \
    cmake               \
    zsh                 \
    python-dev          \
    python3-dev

# Install oh-my-zsh    
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fuzzyfinder (fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
#!/usr/bin/env bash

ZSH=$HOME/.zsh
ZSH_CUSTOM=$ZSH/custom
P10K=$ZSH_CUSTOM/themes/powerlevel10k

if [[ ! -d "$ZSH" ]]; then
    export ZSH
    sh zsh/oh-my-zsh/install.sh --unattended --keep-zshrc
fi

if [[ ! -d "$P10K" ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $P10K
fi

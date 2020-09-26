#!/usr/bin/env bash

ZSH=$HOME/.zsh
ZSH_CUSTOM=$ZSH/custom

if [[ ! -d "$ZSH" ]]; then
    export ZSH
    sh zsh/oh-my-zsh/install.sh --unattended --keep-zshrc
fi

if [[ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
        $ZSH_CUSTOM/themes/powerlevel10k
fi

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git \
        $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

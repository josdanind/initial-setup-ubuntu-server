#!/bin/bash

# zsh y git
sudo apt install git zsh

# Antigen
curl -L git.io/antigen > antigen.zsh
sudo mkdir -p /usr/share/zsh-antigen
sudo mv antigen.zsh /usr/share/zsh-antigen/antigen.zsh

sudo cp zshrc ~/.zshrc
chsh -s `which zsh`
reboot -h now

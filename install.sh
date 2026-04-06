#!/bin/bash

all=(".tmux.conf" ".vimrc" ".zshrc" ".fzf.zsh" ".config/starship.toml" ".config/k9s")
for i in "${all[@]}" ; do
  rm -f $HOME/$i
  [[ "$i" == *"/"* ]] && mkdir -p "$HOME/$(dirname "$i")"
  ln -s $(realpath $i) $HOME/$i
  echo "$i"
done

# apt
sudo apt update && sudo apt upgrade -y
xargs sudo apt install -y <apt-packages.txt

chsh -s /usr/bin/zsh

# Oneliners
./oneliners.sh

# Brew
xargs brew install < brew.txt

# Krew
xargs kubectl krew install < krew.txt

echo 'Install complete, enjoy'

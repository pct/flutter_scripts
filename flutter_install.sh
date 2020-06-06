#!/bin/sh

# 安裝 cli 版的 app store
brew install mas

# 裝 Xcode
mas install 497799835

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo "source ~/.asdf/asdf.fish" >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
asdf update

# flutter dev
brew install dart
asdf plugin-add flutter

asdf install flutter 1.17.3-stable

echo 'flutter 1.17.3-stable' >> ~/.tool-versions
# remove asdf
#rm -rf ~/.tool-versions ~/.asdf


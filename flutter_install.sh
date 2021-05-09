#!/bin/sh

FLUTTER_VERSION="2.0.6-stable"

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo "source ~/.asdf/asdf.fish" >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
asdf update

# flutter dev
brew install dart
asdf plugin-add flutter
brew upgrade dart-lang/dart/dart

asdf install flutter $FLUTTER_VERSION

echo "flutter $FLUTTER_VERSION" >> ~/.tool-versions

# remove asdf
#rm -rf ~/.tool-versions ~/.asdf


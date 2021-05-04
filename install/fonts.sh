#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_tap "homebrew/cask-fonts"

brew_install "Fira Code" "font-fira-code"
brew_install "JetBrains Mono" "font-jetbrains-mono"

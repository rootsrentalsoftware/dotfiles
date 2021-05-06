#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

brew_install "ImageAlpha" "imagealpha" "--cask"
brew_install "ImageMagick" "imagemagick"
brew_install "jpegoptim" "jpegoptim"
brew_install "optipng" "optipng"
brew_install "ImageOptim" "imageoptim" "--cask"

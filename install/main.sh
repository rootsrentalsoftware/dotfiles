#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

./xcode.sh
./homebrew.sh
./zsh.sh

./git.sh
./asdf.sh
./dev_tools.sh
./image_tools.sh

./vscode.sh
./fonts.sh
./quick_look.sh

./misc.sh

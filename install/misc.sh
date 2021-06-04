#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Misc\n\n"

brew_install "Slack" "slack" "--cask"
brew_install "Zoom" "zoom" "--cask"
brew_install "Toggl: Time tracking" "toggl" "--cask"
brew_install "Rectangle window manager" "rectangle" "--cask"

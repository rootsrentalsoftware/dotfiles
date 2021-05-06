#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Misc\n\n"

brew_install "Slack" "slack"
brew_install "Toggl: Time tracking" "toggl"
brew_install "Rectangle window manager" "rectangle"

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="${ZDOTDIR:-~}/.zshrc"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_asdf_config() {

  declare -r CONFIG=". $(brew --prefix asdf)/asdf.sh"

  execute \
    "echo -e $CONFIG >> $LOCAL_SHELL_CONFIG_FILE && reload" \
    "Asdf (update $LOCAL_SHELL_CONFIG_FILE)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "asdf plugin add $2" "$1 (plugin)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Asdf Version Manager\n\n"

execute "brew install coreutils curl gpg asdf" "Install Asdf"

add_asdf_config

install_plugin "Ruby" "ruby"
install_plugin "Node" "nodejs"
install_plugin "Yarn" "yarn"

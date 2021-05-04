#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 (plugin)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"                                :

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Install the VSCode plugins
install_plugin "Auto Add brackets in String" "aliariff.auto-add-brackets"
install_plugin "Cucumber syntax" "alexkrechik.cucumberautocomplete"
install_plugin "Bracket Pair Colorizer" "CoenraadS.bracket-pair-colorizer-2"
install_plugin "CJSX syntax" "crisward.cjsx"
install_plugin "Mustache syntax" "dawhite.mustache"
install_plugin "Endwise" "kaiwood.endwise"
install_plugin "Haml syntax" "karunamurti.haml"
install_plugin "Rspec snippets" "ldrner.rspec-snippets-vscode"
install_plugin "Ruby Symbol" "miguel-savignano.ruby-symbols"
install_plugin "Dotenv syntax" "mikestead.dotenv"
install_plugin "Ruby syntax" "rebornix.ruby"
install_plugin "Yaml syntax" "redhat.vscode-yaml"
install_plugin "Slim syntax" "sianglim.slim"
install_plugin "Quick New File & Folder" "wenfangdu.faster-new"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'

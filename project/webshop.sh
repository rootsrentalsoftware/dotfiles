#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"


declare projectDirectory="$projectsDirectory/budgetcam-webshop"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

reset_dir() {
    cd "$(dirname "${BASH_SOURCE[0]}")"
}

clone_repo() {
    execute \
        "git clone git@github.com:rootsrentalsoftware/budgetcam-webshop.git $projectDirectory" \
        "Clone Git repo to '$projectDirectory'"
}

install() {
    cd $projectDirectory

    execute "asdf install" "Install languages"

    gem install bundler --conservative
    execute "bundle install -j $(nproc)" "Bundle install"
    execute "bundle exec yarn" "Yarn install"

}

main() {

    print_in_purple "\n   Budgetcam Webshop\n\n"

    clone_repo
    install

    reset_dir

}

main

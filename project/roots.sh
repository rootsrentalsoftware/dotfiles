#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"


declare projectDirectory="$projectsDirectory/roots"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

reset_dir() {
    cd "$(dirname "${BASH_SOURCE[0]}")"
}

clone_repo() {
    execute \
        "git clone git@github.com:rootsrentalsoftware/roots.git $projectDirectory" \
        "Clone Git repo to '$projectDirectory'"
}

install() {
    cd $projectDirectory

    execute "asdf install" "Install languages"

    gem install bundler --conservative
    execute "bundle install" "Bundle install"
    execute "bundle exec yarn" "Yarn install"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute "bin/rails db:prepare" "Prepare database"
    execute "bin/rails db:download" "Download database"
    execute "redis-cli flushall" "Flush sidekiq jobs"
    execute "bin/rails eleasticsearch:reset" "Reindex Elasticsearch"

}

main() {

    print_in_purple "\n   Roots\n\n"

    clone_repo
    install

    reset_dir

}

main

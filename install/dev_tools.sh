#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

brew_install 'Heroku (CLI)' 'heroku' '' 'heroku/brew'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install 'Memcached', 'memcached'
brew_install 'Redis', 'redis'

brew_tap 'homebrew/services'
execute "brew services restart --all", "Restart services"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install 'Docker Desktop', 'docker', '--cask'
brew_install 'Postgres.app', 'postgres', '--cask'
brew_install 'iTerm2', 'iterm2', '--cask'

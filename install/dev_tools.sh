#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_postgres() {
    brew_install 'Postgres.app' 'postgres-unofficial' '--cask'

    execute \
        "sudo mkdir -p /etc/paths.d &&
        echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp" \
        "Postgres.app (CLI)"

    if [ -d "/Applications/Postgres.app" ]; then
        open "/Applications/Postgres.app"
    fi
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

brew_install 'Heroku (CLI)' 'heroku' '' 'heroku/brew'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install 'Memcached' 'memcached'
brew_install 'Redis' 'redis'

brew_tap 'homebrew/services'
execute "brew services restart --all" "Restart services"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install 'Docker Desktop' 'docker' '--cask'
brew_install 'iTerm2' 'iterm2' '--cask'
install_postgres

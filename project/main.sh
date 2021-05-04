#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"


declare projectsDirectory="$HOME/projects/rootsrentalsoftware"
declare skipQuestions=false

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Projects\n\n"

heroku_login() {
    ask_for_confirmation "Are you already logged into Heroku?"

    if ! answer_is_yes; then
        heroku login
    fi
}

create_projects_folder() {
    if ! $skipQuestions; then

        ask_for_confirmation "Do you want to store projects in '$projectsDirectory'?"

        if ! answer_is_yes; then
            projectsDirectory=""
            while [ -z "$projectsDirectory" ]; do
                ask "Please specify another location for projects (path): "
                projectsDirectory="$(get_answer)"
            done
        fi

        # Ensure the `projects` directory is available

        while [ -e "$projectsDirectory" ]; do
            ask_for_confirmation "'$projectsDirectory' already exists, do you want to overwrite it?"
            if answer_is_yes; then
                rm -rf "$projectsDirectory"
                break
            else
                projectsDirectory=""
                while [ -z "$projectsDirectory" ]; do
                    ask "Please specify another location for projects (path): "
                    projectsDirectory="$(get_answer)"
                done
            fi
        done

        printf "\n"

    else

        rm -rf "$projectsDirectory" &> /dev/null

    fi

    mkdir -p "$projectsDirectory"
    print_result $? "Create '$projectsDirectory'" "true"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    export projectsDirectory

}

main() {

    heroku_login

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    create_projects_folder

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./roots.sh
    ./webshop.sh

}

main

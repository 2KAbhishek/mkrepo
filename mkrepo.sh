#!/bin/bash

DEFAULT_TEMPLATE="bare-minimum"
DEFAULT_DESCRIPTION="Short sweet headline with 🎇🎉"

display_help() {
    cat <<EOF
mkrepo: Ready to go repos from the CLI 🚀💡

Usage: mkrepo <repoName> [templateName] [description]

Arguments:
  repo name:        The name of the new repository.
  template name:    The name of the template repo to use (default: $DEFAULT_TEMPLATE).
  description:      The description for the repository (default: $DEFAULT_DESCRIPTION).
EOF
}

check_gh_cli() {
    if ! command -v gh &>/dev/null; then
        echo "Error: The 'gh' command is not available. Make sure GitHub CLI is installed."
        exit 1
    fi
}

create_repository() {
    gh repo create "$repoName" -p "$templateName" -d "$description" --private || exit 1
}

clone_repo() {
    gh repo clone "$repoName"
    cd "$repoName" || exit
}

add_remote() {
    cd "$repoName" || exit
    userName=$(gh api user -q .login)
    [ -d .git ] || git init
    git remote add origin "git@github.com:$userName/$repoName.git"
    git pull origin main --allow-unrelated-histories
}

update_and_push() {
    sed -i "s/$templateName/$repoName/g" README.md
    git add README.md
    git commit -m "docs: update README.md"
    git push -u origin main
}

main() {
    check_gh_cli

    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        display_help
        exit 0
    fi

    if [ $# -lt 1 ]; then
        echo "Error: repo name is required."
        echo
        display_help
        exit 1
    fi

    repoName=$1
    templateName=${2:-$DEFAULT_TEMPLATE}
    description=${3:-"$DEFAULT_DESCRIPTION"}

    create_repository
    if [ -d "$repoName" ]; then
        add_remote
    else
        clone_repo
    fi
    update_and_push
}

main "$@"

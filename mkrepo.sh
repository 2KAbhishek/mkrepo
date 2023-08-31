#!/bin/bash
display_help() {
    echo "Usage: $(basename "$0") <repoName> [templateName] [description]"
    echo "  repoName: The name of the new repository."
    echo "  templateName (optional): The name of the template (default: bare-minimum)."
    echo "  description (optional): The description for the repository (default: Welcome to \$repoName)."
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    display_help
    exit 0
fi

if [ $# -eq 0 ]; then
    read -rp "Enter repository name: " repoName
    read -rp "Enter template name (default: bare-minimum): " templateName
    read -rp "Enter repository description (default: Welcome to \$repoName): " description
fi

repoName=${repoName:-$1}
templateName=${templateName:-"bare-minimum"}
description=${description:-"Welcome to $repoName"}

mkdir -p "$repoName"

cd "$repoName" || exit 1

gh repo create "$repoName" -p "$templateName" -d "$description" --private || exit 1

git init
git remote add origin "git@github.com:2kabhishek/$repoName.git"

git pull origin main --allow-unrelated-histories
sed -i "s/$templateName/$repoName/g" README.md
git commit -a -m "docs: update readme"
git push --set-upstream origin main


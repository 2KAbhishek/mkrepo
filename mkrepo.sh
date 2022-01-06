#!/bin/bash

repoName=$1
templateName=$2
description=$3

if [ -z "$templateName" ]; then
    templateName=BareMinimum
fi

if [ -z "$description" ]; then
    description="Welcome to $repoName"
fi

mkdir -p "$repoName"

cd "$repoName" || exit 1

gh repo create "$repoName" -p "$templateName" -d "$description" --private || exit 1

git init
git remote add origin "git@github.com:2kabhishek/$repoName.git"

sed -i "s/$templateName/$repoName/g" README.md
git commit -a -m "Update Readme"

git pull origin main --allow-unrelated-histories
git push --set-upstream origin main


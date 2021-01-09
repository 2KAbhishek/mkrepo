#!/bin/bash

repoName=$1
templName=$2

if [ -z "$templName" ]; then
    templName=BareMinimum
fi

mkdir -p "$repoName"

cd "$repoName" || exit 1

git init
gh repo create "$repoName" -y -d "Welcome to $repoName" --private -p "$templName"
git pull origin master --allow-unrelated-histories
git push --set-upstream origin master

sed -i "s/$templName/$repoName/g" README.md
git commit -a -m "Update Readme"

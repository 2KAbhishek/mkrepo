<div align = "center">

<h1><a href="https://2kabhishek.github.io/mkrepo">mkrepo</a></h1>

<a href="https://github.com/2KAbhishek/mkrepo/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/mkrepo?style=plastic&color=white&label=License"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/pulse">
<img alt="Updated" src="https://img.shields.io/github/last-commit/2kabhishek/mkrepo?style=plastic&color=e30724&label=Updated"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/mkrepo?style=plastic&color=00d451&label=Stars"></a>

<a href="https://github.com/2KAbhishek/mkrepo/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/mkrepo?style=plastic&color=1688f0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/watchers">
<img alt="Watchers" src="https://img.shields.io/github/watchers/2kabhishek/mkrepo?style=plastic&color=ff5500&label=Watchers"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/graphs/contributors">
<img alt="Contributors" src="https://img.shields.io/github/contributors/2kabhishek/mkrepo?style=plastic&color=f0f&label=Contributors"> </a>

<a href="https://github.com/2KAbhishek?tab=followers">
<img alt="Followers" src="https://img.shields.io/github/followers/2kabhishek?color=222&style=plastic&label=Followers"> </a>

<h3>Ready to go repos from the CLI ✈💡</h3>

</div>

## What is this

mkrepo is a little wrapper around `github-cli` that allows you to make new repos even more quickly and sets up remotes so that you can jump straight into typing out code.

## Inspiration

I make a lot of projects (as you might have seen on my GitHub profile) and I needed a tool to fasttrack the first commit.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of `github-cli`

- A template repo like [mkrepo](https://github.com/2kabhishek/mkrepo)

## Installing mkrepo

To install mkrepo, follow these steps:

```bash
git clone https://github.com/2kabhishek/mkrepo
cd mkrepo
# Link mkrepo to a directory that's in PATH (~/Applications/bin here)
ln -sfnv "$PWD/mkrepo.sh" ~/Applications/bin/mkrepo
```

## Using mkrepo

If you have an existing project, you can use `mkrepo project_dirname` to create a new repo with the same name and it will automatically set things up for you.

For new repos you can use `mkrepo` to create a new repo that uses the template you pass (mkrepo if empty) for setting things up.

```bash
USAGE:
    mkrepo repoName [templName]

EXAMPLES:
mkrepo existing_project
# Use tiny-web as template
mkrepo new_project tiny-web
```

## How it was built

mkrepo was built using `bash` and `gh`

## What's next

Needs changes to support customization for other users.

Hit the ⭐ button if you found this useful.

## More Info

<div align="center">

<a href="https://github.com/2KAbhishek/mkrepo">Source</a> | <a href="https://2kabhishek.github.io/mkrepo">Website</a>

</div>

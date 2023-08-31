<div align = "center">

<h1><a href="https://2kabhishek.github.io/mkrepo">mkrepo</a></h1>

<a href="https://github.com/2KAbhishek/mkrepo/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/mkrepo?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/mkrepo/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/mkrepo?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/mkrepo?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/mkrepo/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/mkrepo?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/mkrepo?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/mkrepo/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/mkrepo?style=flat&color=e06c75&label="> </a>

<h3>Ready to go repos from the CLI ✈💡</h3>

</div>

## What is this

mkrepo is a little wrapper around `github-cli` that allows you to make new repos even more quickly and sets up remotes so that you can jump straight into typing out code.

## Inspiration

I make a lot of projects (as you might have seen on my GitHub profile), and I needed a tool to fasttrack the first commit.

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
ln -sfnv "$PWD/mkrepo.sh" ~/.local/bin/mkrepo
```

## Using mkrepo

If you have an existing project, you can use `mkrepo project_dirname` to create a new repo with the same name, and it will automatically set things up for you.

For new repos you can use `mkrepo` to create a new repo that uses the template you pass (mkrepo if empty) for setting things up.

```bash
mkrepo: Ready to go repos from the CLI 🚀💡

Usage: mkrepo <repoName> [templateName] [description]

Arguments:
  repo name:        The name of the new repository.
  template name:    The name of the template repo to use (default: $DEFAULT_TEMPLATE).
  description:      The description for the repository (default: $DEFAULT_DESCRIPTION).
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

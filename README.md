# dotfiles

My personal dotfiles and bootstrap scripts for setting up new environments.

## Getting Started

Setting up a new environment takes just a couple of steps. Follow the
instructions below for the relevant OS.

### 1. Bootstrap

#### macOS

This repo contains a shell script called [`macos-bootstrap`](macos-bootstrap)
which will perform the tasks below.

- Set the computer name and hostname.
- Set many basic macOS preferences.
- Install Homebrew.
- Install CLI and macOS applications. (See the [Brewfile]() for more details.)
- Change the login shell to zsh.
- Restart applications so some changes take effect immediately.

### 2. Stow

Once the environment is bootstrapped, a CLI application called `stow` can be
used to symlink dotfiles from this repo to the home directory, as seen below.

    ~/dotfiles $  stow git

The `stow` application may have been installed during the bootstrap process. If
not, it will need to be installed manually.

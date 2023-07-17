# Neovim configurations with lua

The configurations and plugins I use currently. Packer is used as the package manager and the plugins.lua file installs it automatically.

## Required dependencies

Neovim requires a third-party program to use the system clipboard. I use the the following:

```bash
sudo apt-get install xclip
```

Telescope plugin's live grep requires ripgrep:

```bash
sudo apt-get install ripgrep
```

## Possible issues

Some configurations like keymappings and plugins like Nvim Tree might not work with versions of Neovim below 0.8. In Debian based distros you can install latest unstable version with the following commands (more stable versions can be installed directly from source):

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

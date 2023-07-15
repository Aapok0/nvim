# Neovim configurations with lua

The configurations and plugins I use currently. Packer is used as the package manager and the plugins.lua file installs it automatically.

## Possible issues

Some configurations like keymappings might not work with versions of Neovim below 0.7. In Debian based distros you can install 0.7 with the following commands:

```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

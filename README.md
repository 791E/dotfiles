# Dotfiles
My linux dotfiles

## General
I'm trying to add all of my dotfiles to this repo, but this will probably take a lot more time. If you find any mistakes or want to add / improve something, do feel free to create an issue / pull request. If it's something you'd like to add though, I might not accept the PR, because this repo is after all made to organize my dotfiles.

## Installation
clone the repo and move the folders to the correct location, or use `stow` to automatically create symlinks.

Example: Installing the neovim config
```
git clone https://github.com/791E/dotfiles
cd dotfiles
stow nvim
```
## Dependencies
I recommend using git to clone the repo, so you can also update it to get any new changes.

### hypr
- wayland
- hyprland
- hyprpaper
- hypridle
- kitty (can be changed in the config file)
- dolphin (can be changed in the config file)
- rofi (can be changed in the config file)
- pipewire (pulseaudio can be used, but pipewire is newer and therefore recommended)
- pavucontrol (GUI for pulseaudio / pipewire) (optional)

### kitty
- kitty
- FiraCode Nerd Font (can be changed in the config file)

### nvim
- nvim
- npm (to install pyright [LSP server for python], doesn't need to be installed if you don't care about python, but then I'd recommend removing everything that contains "pyright" from dotfiles/nvim/.config/nvim/lua/plugins/lsp-config.lua)

### sddm
- sddm

### yazi
- yazi

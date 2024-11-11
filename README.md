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

## Known issues

### KDE Dolphin doesn't recognize MIME associations
When I installed KDE's file manager Dolphin, it never recognized the MIME file type associations. I googled it and found a discussion on it over on the [arch forums](https://bbs.archlinux.org/viewtopic.php?id=295236), but that didn't help for me. The only thing that helped, was a comment by Trvzn after the thread was already marked as solved, linking a reddit discussion from over on [r/KDE](https://www.reddit.com/r/kde/), where [u/Red-Eye-Soul](https://www.reddit.com/user/Red-Eye-Soul/) had the same issue. The solution proposed by [u/Puzzleheaded_Leg369](https://www.reddit.com/user/Puzzleheaded_Leg369/) on this [discussion](https://www.reddit.com/r/kde/comments/1bd313p/comment/l1jinyf/) worked for me, so try that if you have the same issue, or create an issue / PR if you happen to know about a better solution.

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
- git (lazy.nvim and mason.nvim use git to install plugins / LSP servers)
- ripgrep (for telescope.nvim.builtin.live_grep)

### sddm
- sddm

### yazi
- yazi

### zsh
- zsh
- git (to install antigen plugins)
- fzf (fuzzy finder for command history, two aliases depend on fzf)

## Known issues

### KDE Dolphin doesn't recognize MIME associations
When I installed KDE's file manager Dolphin, it never recognized the MIME file type associations. I googled it and found a discussion on it over on the [arch forums](https://bbs.archlinux.org/viewtopic.php?id=295236), but that didn't help for me. The only thing that helped, was a comment by Trvzn after the thread was already marked as solved, linking a reddit discussion from over on [r/KDE](https://www.reddit.com/r/kde/), where [u/Red-Eye-Soul](https://www.reddit.com/user/Red-Eye-Soul/) had the same issue. The solution proposed by [u/Puzzleheaded_Leg369](https://www.reddit.com/user/Puzzleheaded_Leg369/) on this [discussion](https://www.reddit.com/r/kde/comments/1bd313p/comment/l1jinyf/) worked for me, so try that if you have the same issue, or create an issue / PR if you happen to know about a better solution.

Here's a copy of [u/Puzzleheaded_Leg369](https://www.reddit.com/user/Puzzleheaded_Leg369/)'s comment, in case it ever get's deleted:

"I did follow these steps and I struggled in getting the 'applications.menu' file, so I would like to share how I did solve the issue from this checkpoint.
First try running this command

kbuildsycoca6 --noincremental
If it does print this output -> "applications.menu" not found in QList("~/.config/menus", "/etc/xdg/menus"), you will need to get this file.
To get the applications.menu file, install this package

sudo pacman -Sy archlinux-xdg-menu
Then run this command to generate the file

sudo update-desktop-database
As the file name differs you need to change the file name

cd /etc/xdg/menus

ls
expected output -> "arch-applications.menu"

sudo mv arch-applications.menu applications.menu
Then run again this command and it should work fine

kbuildsycoca6 --noincremental"

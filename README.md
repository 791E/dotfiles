# Dotfiles
My linux dotfiles

## Installation
clone the repo and move the folders to the correct location, or use `stow` to automatically create symlinks.

Example: Installing the neovim config
```
git clone https://github.com/791E/dotfiles
cd dotfiles
stow nvim
```
Note that GNU stow will create symlinks, that are supposed to be located in the root directory, in the home directory.
E.g.: If you try to do `stow sddm`, instead of creating the symlink in /etc/, it will create the symlink in ~/etc/.
To solve this, run `stow -t=/ sddm`.

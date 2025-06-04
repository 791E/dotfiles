# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=3000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###########
# Aliases #
###########

source $HOME/.config/zsh/aliases.zsh

##########
# Prompt #
##########

source $HOME/.config/zsh/prompt.zsh

#############
# Spicetify #
#############

export PATH=$PATH:$HOME/.spicetify

###############
# Completions #
###############

# Enable Zsh completions
autoload -Uz compinit
compinit

# Enable fuzzy auto-completion
source <(fzf --zsh)

# Use CTRL + H to view command history completion
bindkey -r '^R'
bindkey '^H' fzf-history-widget

# Zsh completion settings
zstyle ':completion:*' menu select


###########
# Antigen #
###########

# Enable antigen
source $HOME/.config/zsh/antigen.zsh

# antigen plugins
antigen bundle zsh-users/zsh-autosuggestions
# Must be the last antigen plugin
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply antigen changes
antigen apply

if command -v nerdfetch &> /dev/null; then
    nerdfetch && echo "\n"
fi

##########
# zoxide #
##########

eval "$(zoxide init zsh)"

#######
# bun #
#######

# completions
[ -s "/home/Gian/.bun/_bun" ] && source "/home/Gian/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

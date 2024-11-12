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

#########################
# Environment Variables #
#########################

export EDITOR="/usr/bin/nvim"

###########
# Aliases #
###########

source $HOME/.zsh/aliases.zsh

##########
# Prompt #
##########

source $HOME/.zsh/prompt.zsh

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
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Use CTRL + H to view command history completion
bindkey -r '^R'
bindkey '^H' fzf-history-widget

# Zsh completion settings
zstyle ':completion:*' menu select


###########
# Antigen #
###########

# Enable antigen
source $HOME/antigen.zsh

# antigen plugins
antigen bundle zsh-users/zsh-autosuggestions
# Must be the last antigen plugin
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply antigen changes
antigen apply


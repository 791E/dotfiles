###############
# Zsh Aliases #
###############

alias lsa='lsd -AF1'
alias ls='ls --color=auto'
alias lst='lsd -AF --tree --ignore-glob .git'
alias grep='grep --color=auto'
alias svim='sudo -E nvim'
alias cfzf='cd $(dirname $(ff))'
alias nfzf='nvim $(ff)'
alias ff='fzf --preview "bat --color=always --style=numbers {}"'
alias lg='lazygit'


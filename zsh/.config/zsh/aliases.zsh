###############
# Zsh Aliases #
###############

alias lsa='lsd -AF1'
alias ls='ls --color=auto'
alias lst='lsd -AF --tree --ignore-glob .git --ignore-glob target'
alias grep='grep --color=auto'
alias svim='sudo -E nvim'
alias cfzf='cd $(dirname $(ff))'
alias nfzf='nvim $(ff)'
alias ff='fzf --preview "bat --color=always --style=numbers {}"'
alias lg='lazygit'

# compress pdf files with ghostscript
pdf_compress ()
{
    [[ -n $* ]] && gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$1 $1 || echo "File path must be specified"
}

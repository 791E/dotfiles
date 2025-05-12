###############
# Zsh Aliases #
###############

alias la='lsd -AF1'
alias lsa='lsd -lA'
alias ls='ls --color=auto'
alias lst='lsd -AF --tree --ignore-glob .git --ignore-glob target'
alias grep='grep --color=auto'
alias svim='sudo -E nvim'
alias nff='nvim $(ff)'
alias ff='fzf --preview "bat --color=always --style=numbers {}"'
alias lg='lazygit'
alias cla='clear && la'

# compress pdf files with ghostscript
pdf_compress ()
{
    [[ "$#" -eq 2 ]] && gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1 || echo "Exactly two file paths must be specified: `pdf_compress </path/to/input_file.pdf> </path/to/output_file.pdf>`"
}

###############
# Zsh Aliases #
###############

alias la='lsd -AF1'
alias lsa='lsd -lAF'
alias ls='ls --color=auto'
alias lst='lsd -AF --tree --ignore-glob .git --ignore-glob target'
alias grep='grep --color=auto'
alias svim='sudo -E nvim'
alias ff='fzf --preview "bat --color=always --style=numbers {}"'
alias lg='lazygit'
alias cla='clear && la'

# Select a file with ff and open it in neovim
nff()
{
    local file=$(ff --prompt "Open with neovim: ")
    [ -n "$file" ] && nvim "$file" || return
}

# compress pdf files with ghostscript
cpdf()
{
    local input=""
    local output=""

    # Parse arguments (order-independent)
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -o)
                shift
                output="$1"
                ;;
            -*)
                echo "Unknown option: $1"
                return 1
                ;;
            *)
                input="$1"
                ;;
        esac
        shift
    done

    if [[ -z "$input" ]]; then
        echo "Error: No input file specified."
        echo "Usage: compress_pdf <input.pdf> [-o <output.pdf>]"
        return 1
    fi

    # Check if the input file actually exists
    if [[ ! -f "$input" ]]; then
        echo "Error: Input file '$input' does not exist or is not a regular file."
        return 1
    fi

    if [[ -z "$output" ]]; then
        output="$(mktemp -t compressed_XXXXXX.pdf)"
        local use_temp=true
    fi

    # Run Ghostscript to compress the file
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.7 \
        -dPDFSETTINGS=/default \
        -dNOPAUSE -dQUIET -dBATCH \
        -sOutputFile="$output" "$input"

        # If we used a temporary file, overwrite the original
        if [[ "$use_temp" == true ]]; then
            mv "$output" "$input"
            echo "Compressed and overwritten: $input"
        else
            echo "Compressed output saved to: $output"
        fi
}


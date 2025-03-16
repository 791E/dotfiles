##############
# Zsh Prompt #
##############

# Nord-themed zsh prompt

# I used Isaac W (agnoster)'s zsh theme as template, https://github.com/agnoster/agnoster-zsh-theme/

# Segments of the prompt, order in which it will be in PROMPT

typeset -aHg PROMPT_SEGMENTS=(
segment_status
segment_context
segment_virtualenv
segment_dir
segment_git
segment_end
)

# Segments of the right prompt, reverse order in which it will be in RPROMPT

typeset -aHg RPROMPT_SEGMENTS=(
rsegment_time
rsegment_start
)

CURRENT_BG='NONE'
if [[ -z "$PRIMARY_FG" ]]; then
	PRIMARY_FG=black
fi

# Characters

SEGMENT_SEPARATOR="\ue0b0"
RSEGMENT_SEPARATOR="\ue0b2"
PLUSMINUS="\u00b1"
BRANCH="\ue0a0"
DETACHED="\u27a6"
CROSS="\u2718"
LIGHTNING="\u26a1"
GEAR="\u2699"

prompt_segment() {
	local bg fg
	[[ -n $1 ]] && bg="%K{$1}" || bg="%f"
	[[ -n $2 ]] && fg="%F{$2}" || fg="%k"
	if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
		PROMPT+="%{$bg%F{$CURRENT_BG}%}$(print $SEGMENT_SEPARATOR)%{$fg$bg%}"
	else
		PROMPT+="%{$bg%}%{$fg%}"
	fi
	CURRENT_BG=$1
	[[ -n $3 ]] && PROMPT+=$3
}

segment_status() {
	local symbols
	RETVAL=$?
	symbols=()
	[[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}$(print $CROSS)"
	[[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}$(print $LIGHTNING)"
	[[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}$(print $GEAR)"

	[[ -n "$symbols" ]] && prompt_segment $PRIMARY_FG default " $symbols "
}

segment_context() {
	prompt_segment "blue" $PRIMARY_FG " %n@%m "
}

segment_dir() {
	prompt_segment "cyan" $PRIMARY_FG " %3~ "
}

segment_git() {
	local color ref
	is_dirty() {
		test -n "$(git status --porcelain --ignore-submodules)"
	}
	ref="$vcs_info_msg_0_"
	if [[ -n "$ref" ]]; then
		if is_dirty; then
			color="yellow"
			ref="${ref} $(print $PLUSMINUS)"
		else
			color="green"
			ref="${ref} "
		fi
		if [[ "${ref/.../}" == "$ref" ]]; then
			ref="$(print $BRANCH) $ref"
		else
			ref="$(print $DETACHED) ${ref/.../}"
		fi
		prompt_segment $color $PRIMARY_FG
		PROMPT+=" $ref"
	fi
}

segment_virtualenv() {
	if [[ -n $VIRTUAL_ENV ]]; then
		prompt_segment "yellow" $PRIMARY_FG
		PROMPT+=" $(basename $VIRTUAL_ENV) "
	fi
}

segment_end() {
	if [[ -n $CURRENT_BG ]]; then
		PROMPT+="%{%k%F{$CURRENT_BG}%}$(print $SEGMENT_SEPARATOR)"
	else
		PROMPT+="%{%k%}"
	fi
	PROMPT+="%{%f%} "
}

rprompt_segment() {
	local bg fg
	[[ -n $1 ]] && bg="%K{$1}" || bg="%f"
	[[ -n $2 ]] && fg="%F{$2}" || fg="%k"
	if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
		RPROMPT_REVERSED+=("%{$bg%F{$CURRENT_BG}%}$(print $RSEGMENT_SEPARATOR)")
		RPROMPT_TEMP="%{$fg$bg%}"
	else
		RPROMPT_TEMP=("%{$bg%}%{$fg%}")
	fi
	CURRENT_BG=$1
	[[ -n $3 ]] && RPROMPT_REVERSED+=("${RPROMPT_TEMP}${3}")
}


rsegment_time() {
	rprompt_segment "blue" $PRIMARY_FG "%t "
}

rsegment_start() {
	RPROMPT_REVERSED+=("%F{$CURRENT_BG}$(print $RSEGMENT_SEPARATOR)")
}

prompt_main() {
	PROMPT="%{%f%b%k%}"
	CURRENT_BG='NONE'
	for segment in $PROMPT_SEGMENTS; do
		[[ -n $segment ]] && $segment
	done
}

rprompt_main() {
	RPROMPT_REVERSED=()
	RPROMPT_TEMP=''
	RPROMPT="%{%f%b%k%}"
	CURRENT_BG='NONE'
	for segment in $RPROMPT_SEGMENTS; do
		[[ -n $segment ]] && $segment
	done

	for ((i=${#RPROMPT_REVERSED[@]}; i>=0 ; i--)); do
		RPROMPT+=${RPROMPT_REVERSED[i]}
	done
}

prompt_precmd() {
	vcs_info
	prompt_main
	rprompt_main
}

prompt_setup() {
	autoload -Uz add-zsh-hook
	autoload -Uz vcs_info

	add-zsh-hook precmd prompt_precmd

	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:*' check-for-changes false
	zstyle ':vcs_info:git*' formats '%b'
	zstyle ':vcs_info:git*' actionformats '%b (%a)'
}

prompt_setup

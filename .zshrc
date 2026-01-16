########################
### DEFAULT PROGRAMS ###
########################


#############
### PROMPT ###
##############

PS1="[%n@%m %F{blue}%1~%f]\$ "
bindkey -v


###############
### ALIASES ###
###############

alias ls='eza'
alias lls='ls -lh --git'
alias tls='ls -T --icons=auto'
alias grep='grep --color=auto'
alias avenv='source .venv/bin/activate'
alias pvenv='.venv/bin/python3'
alias code='code --ozone-platform=wayland'
alias duh='du -h --max-depth=1'
alias ..='cd ..'
alias sl='sl -ew'
alias fzf='fzf --style=full'


#############
### EVALS ###
#############

eval "$(thefuck --alias)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd cd)"
eval "$(opam env)"


#######################
### PROGRAM CONFIGS ###
#######################

function nvim_widget() {
    nvim
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function yazi_widget() {
    y "$@"
    zle reset-prompt
}

function fzf_pipe_widget() {
    if [[ -n "$BUFFER" ]]; then
        BUFFER="$BUFFER | fzf"
        zle accept-line
    fi
}


###############
### WIDGETS ###
###############

zle -N nvim_widget
zle -N yazi_widget
zle -N fzf_pipe_widget


################
### KEYBINDS ###
################

bindkey "^[n" nvim_widget
bindkey "^[y" yazi_widget
bindkey "^[f" fzf_pipe_widget



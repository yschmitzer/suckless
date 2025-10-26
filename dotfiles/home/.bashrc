[[ $- != *i* ]] && return

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

bind '"\e[5~": history-search-backward'
bind '"\e[6~": history-search-forward'
bind '"\C-f": "tmux-sessionizer.sh\n"'
bind '"\C-e": "nvim\n"'

export EDITOR=$(which nvim)
export PATH=$HOME/.local/bin:$PATH

git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

RESET="\[\033[0m\]"
FG="\[\033[38;5;223m\]"      # Gruvbox Light FG
BLUE="\[\033[38;5;109m\]"    # Gruvbox Blue/Aqua
GREEN="\[\033[38;5;142m\]"   # Gruvbox Green
ORANGE="\[\033[38;5;208m\]"  # Gruvbox Orange
MAGENTA="\[\033[38;5;175m\]" # Gruvbox Purple

PS1="${FG}\u${RESET} ${BLUE}@${RESET} ${FG}\h${RESET} ${MAGENTA}in${RESET} ${FG}\w${RESET} ${ORANGE}\$(git_branch)${RESET}\n${GREEN}> ${RESET}"


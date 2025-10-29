[[ $- != *i* ]] && return

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

bind '"\e[5~": history-search-backward'
bind '"\e[6~": history-search-forward'
bind '"\C-f": "tmux-sessionizer\n"'
bind '"\C-e": "nvim\n"'

export EDITOR=$(which nvim)
export PATH=$HOME/.local/bin:$PATH

git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

RESET="\[\033[0m\]"
FG="\[\033[38;5;252m\]"      # Foreground (text)
BLUE="\[\033[38;5;109m\]"    # Pale steel blue
GREEN="\[\033[38;5;108m\]"   # Muted olive green
ORANGE="\[\033[38;5;137m\]"  # Brownish orange
MAGENTA="\[\033[38;5;139m\]" # Muted mauve
RED="\[\033[38;5;167m\]"     # Coral red (for git branch or warning)

PS1="${FG}\u${RESET} ${BLUE}@${RESET} ${FG}\h${RESET} ${MAGENTA}in${RESET} ${FG}\w${RESET} ${RED}\$(git_branch)${RESET}\n${GREEN}> ${RESET}"


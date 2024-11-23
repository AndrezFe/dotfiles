# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ~="cd ~"
alias repos='cd /Volumes/Data/source/repos/'

alias ..="cd .."
alias ...="cd ../.."
alias ll="eza -lahT -L=2 --icons"
alias la="lsd -lah"
alias lah="lsd -lah --header"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias ci.='(code-insiders $PWD &>/dev/null &)'
alias o.='open .'

alias up='dot package update_all'
alias cls='clear'
alias copy='pbcopy'
alias reload='source "${HOME}/.$(basename $SHELL)rc"' # env -i zsh
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
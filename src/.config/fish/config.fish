alias ll2='exa -lah --git -TL=2'
alias llg='ll | grep --color=always'
alias ll2g='ll2 | grep --color=always'
alias gc='git commit'
alias gd='git diff'
alias ga='git add'
alias gs='git status'
alias bd='bin/console'
alias doei='shutdown now'

set -gx PATH $HOME/.yarn/bin $PATH

source $HOME/google-cloud-sdk/path.fish.inc

alias ll2='exa -lah --git -TL=2'
alias llg='ll | grep --color=always'
alias ll2g='ll2 | grep --color=always'
alias gc='git commit'
alias gd='git diff'
alias ga='git add'
alias gs='git status'
alias bd='bin/console'
alias doei='shutdown now'

set -gx PATH $HOME/.yarn/bin $HOME/bin $PATH
set -gx EDITOR vim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rik/bin/packages/google-cloud-sdk/path.fish.inc' ]; . '/home/rik/bin/packages/google-cloud-sdk/path.fish.inc'; end

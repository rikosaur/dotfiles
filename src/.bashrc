# setup powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
fi

# setup aliases
alias ll='exa -lah --git'
alias ll2='exa -lah --git -TL=2'
alias llg='ll | grep --color=always'
alias ll2g='ll2 | grep --color=always'
alias ls='exa'
alias gc='git commit'
alias gd='git diff'
alias ga='git add'
alias gs='git status'
alias bd='bin/console'
alias doei='shutdown now'

# make tail -f colored
tailf-color () {
    if [ -z "$1" ] ; then
        echo "Please specify a file for monitoring"
        return
    fi

    tail -f $1 | awk '
                {matched=0}
                /INFO:/    {matched=1; print "\033[0;37m" $0 "\033[0m"}   # WHITE
                /NOTICE:/  {matched=1; print "\033[0;36m" $0 "\033[0m"}   # CYAN
                /WARNING:/ {matched=1; print "\033[0;34m" $0 "\033[0m"}   # BLUE
                /ERROR:/   {matched=1; print "\033[0;31m" $0 "\033[0m"}   # RED
                /ALERT:/   {matched=1; print "\033[0;35m" $0 "\033[0m"}   # PURPLE
                matched==0            {print "\033[0;33m" $0 "\033[0m"}   # YELLOW
        '
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rik/google-cloud-sdk/path.bash.inc' ]; then source '/home/rik/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rik/google-cloud-sdk/completion.bash.inc' ]; then source '/home/rik/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.symfony/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/.npm-global/bin:$HOME/.local/bin:$PATH"

if type "kubectl" &> /dev/null; then
	source <(kubectl completion bash)
fi


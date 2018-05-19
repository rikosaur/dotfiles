[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
eval "$(ssh-agent -s)"
exec i3

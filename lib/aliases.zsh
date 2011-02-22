# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Show history
alias history='fc -l 1'

# List directory contents
alias ls='ls --group-directories-first --color=auto'
alias la='ls -a --group-directories-first --color=auto'
alias ll='ls -l'

alias afind='ack-grep -il'

alias ex='extract'

# Auto Detect Applications
alias -s html=$BROWSER
alias -s org=$BROWSER
alias -s php=$BROWSER
alias -s com=$BROWSER
alias -s net=$BROWSER
alias -s png=feh
alias -s jpg=feh
alias -s gif=feh
alias -s sxw=soffice
alias -s doc=soffice
alias -s java=$EDITOR
alias -s txt=$EDITOR

# Task Stuff
alias diff='colordiff'
alias free='free -m'
alias df='df -h'
alias mandb='sudo mandb'
alias pacman-optimize='sudo pacman-optimize'
alias ldconfig='sudo ldconfig'
alias pacman='sudo pacman'
alias rebase='sudo rebase'
alias dhcpcd='sudo dhcpcd'
alias fcache='sudo fc-cache -vfs && fc-cache -vfs'
alias hdparm='sudo hdparm'
alias grep='grep --color'
alias pid='pgrep'
alias kfc='killall conky'
alias reboot='sudo shutdown -r now'
alias off='sudo shutdown -h now'
alias mount='sudo mount'
alias umount='sudo umount'
alias xrel='xrdb -merge ~/.Xdefaults'
alias zrel='source ~/.zshrc'

# Application Specified
alias v='vim'
alias vs='sudo vim'

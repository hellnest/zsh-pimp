# Aliases
alias g='git'
alias gst='git status'
alias gl='git pull origin'
alias gup='git fetch && git rebase'
alias gp='git push origin'
alias gadd='git add'
alias gcom='git commit -m'
alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=5'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

# Setup empty github repo
mkgit()
{
    mkdir $1
    cd $1
    git init
    touch README.markdown
    git add README.markdown
    git commit -m 'inital setup - automated'
    git remote add origin git@github.com:crshd/$1.git
    git push origin master
}

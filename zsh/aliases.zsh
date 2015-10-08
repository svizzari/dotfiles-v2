# GENERAL
# ********************************************************

alias bower='noglob bower'
alias reload!="source ~/.zshrc"
alias update='git stash && git pull && bundle install && git stash pop'

# GENERAL
# ********************************************************

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SUBLIME
# ********************************************************

alias subl.='subl . && subl && subl'

# RUBY
# ********************************************************

alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle'

# GITHUB
# ********************************************************

[[ -x $(which hub) ]] && eval "$(hub alias -s)"

# GIT
# ********************************************************

# alias g=git
# alias gco='git checkout'
# alias co='git checkout'
# alias gcm='git checkout master'
# alias gcmpbr='git checkout master && git pull && bundle && reload'

alias gpl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

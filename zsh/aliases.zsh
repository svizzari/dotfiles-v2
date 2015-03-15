# GENERAL
# ********************************************************

alias bower='noglob bower'
alias mysql="mysql -uroot"
alias reload!="source ~/.zshrc"
alias restart!="touch tmp/restart.txt"
alias update='git stash && git pull && bundle install && git stash pop'

# GENERAL
# ********************************************************

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# RSYNC
# ********************************************************

alias pcp='rsync --progress'
alias rmv='rsync --progress --remove-source-files'

# SUBLIME
# ********************************************************

alias subl.='subl . && subl && subl'

# TAIL
# ********************************************************

alias tf='tail -f'
alias tfdl='tail -f $(git rev-parse --show-toplevel)/log/development.log'
alias tdl='tail -f $(git rev-parse --show-toplevel)/log/development.log'

# RUBY
# ********************************************************

alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle'
alias sb='script/bootstrap'
alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias migrate='rake db:migrate db:test:clone'

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

# ZENDESK
# ********************************************************

# Paths
if [ -d "${HOME}/Code/zendesk" ]; then
  export ZENDESK_ROOT=~/Code/zendesk
  export ZENDESK_APP_MARKET_PATH=~/Code/zendesk/zendesk_app_market
  export ZENDESK_APPS_TOOLS_PATH=~/Code/zendesk/zendesk_apps_tools
  export ZENDESK_CARSON_PATH=~/Code/zendesk/zendesk_carson
  export ZENDESK_CLASSIC_PATH=~/Code/zendesk/zendesk
  export ZENDESK_PROVISIONING_PATH=~/Code/zendesk/zendesk_provisioning

  export ZENDESK_USERNAME=svizzari

  # Server configuration
  #export ZENDESK_HOST=zendesk.dev
  #export ZENDESK_PORT=443

  # Aliases
  alias apps="cd $ZENDESK_ROOT/apps"
  alias classic="cd $ZENDESK_CLASSIC_PATH"
  alias carson="cd $ZENDESK_CARSON_PATH"
  alias console="cd $ZENDESK_ROOT/zendesk_console"
  alias zaf="cd $ZENDESK_ROOT/zendesk_app_framework"
  alias zas="cd $ZENDESK_ROOT/zendesk_apps_support"
  alias lotus="cd $ZENDESK_ROOT/zendesk_console"
  alias zam="cd $ZENDESK_APP_MARKET_PATH"
  alias zd="cd $ZENDESK_ROOT"
  alias tfcl="tail -f $ZENDESK_CARSON_PATH/log/development.log"
  alias reload-all="boxen --restart-service nginx"
  alias reload-carson="touch $ZENDESK_CARSON_PATH/tmp/restart.txt"
  alias console_carson="pushd $ZENDESK_CARSON_PATH > /dev/null; bundle exec rails console; popd > /dev/null"
  alias console_classic="pushd $ZENDESK_CLASSIC_PATH > /dev/null; bundle exec rails console; popd > /dev/null"
  alias console_jig="pushd $ZENDESK_ROOT/jig > /dev/null; bundle exec rails console; popd > /dev/null"
  alias console_hercules="pushd $ZENDESK_ROOT/hercules > /dev/null; bundle exec rails console; popd > /dev/null"
fi

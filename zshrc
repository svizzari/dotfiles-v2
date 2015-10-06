# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.zsh/bootstrap.zsh

# External settings
source ~/.zsh/external.zsh

# Aliases
source ~/.zsh/aliases.zsh

# Custom prompt
source ~/.zsh/prompt.zsh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

# Source boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ADDED BY DOCKER-IMAGES
source /Users/svizzari/Code/zendesk/docker-images/dockmaster/zdi.sh

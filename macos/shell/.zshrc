HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' frequency 14

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/Documents/Misc/Flutter/flutter/bin:$PATH" 
export EDITOR="nvim" 

# Allow other users to be able to use the parent brew installation 
brewser=$(stat -f "%Su" $(which brew))
alias brew="sudo -Hu asynchroza brew"

alias hd="$EDITOR $HOME/macdotfiles/macos" 
alias rc="$EDITOR $HOME/.zshrc"

export NVM_DIR="$HOME/.nvm" 

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm 
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# sst
export PATH=/Users/asynchroza/.sst/bin:$PATH

PATH=~/.console-ninja/.bin:$PATH

# always transfer brew ownership to current user
sudo chown -R $USER /opt/homebrew

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

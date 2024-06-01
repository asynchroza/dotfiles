export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/Documents/Misc/Flutter/flutter/bin:$PATH"

export EDITOR="nvim"
alias hd="$EDITOR $HOME/macdotfiles/macos"

### other users to be able to use the parent brew installation 
brewser=$(stat -f "%Su" $(which brew))

alias brew="sudo -Hu asynchroza brew"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


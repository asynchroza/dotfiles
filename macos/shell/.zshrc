export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/Documents/Misc/Flutter/flutter/bin:$PATH"

export EDITOR="nvim"

### other users to be able to use the parent brew installation 
brewser=$(stat -f "%Su" $(which brew))
alias hd="$EDITOR $HO$brewser brew"


alias brew="sudo -Hu asynchroza brew"

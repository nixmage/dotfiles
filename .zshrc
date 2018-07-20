#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export TERM=xterm-256color

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH=/opt/nginx/sbin/:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source ~/.profile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
alias config='/usr/bin/git --git-dir=/Users/puneet/.cfg/ --work-tree=/Users/puneet'

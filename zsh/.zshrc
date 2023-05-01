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

# Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Aliases
alias p='python3'
alias y='yarn'
alias p='pnpm'
alias pi='p i'
alias v='vercel'
alias vd='f() { vercel deploy $1 };f'
alias mkcd='f() { mkdir $1 && cd $1 };f'
alias sz='source ~/.zshrc'
alias cz='code ~/.zshrc'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# node
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# pnpm
export PNPM_HOME="/Users/ceciltantay/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# 1password
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock


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
alias awsprofile="aws sts get-caller-identity --query Account --output text"
alias gpo='git pull origin "$(git-branch-current 2> /dev/null)"'
alias giaa='gia .'
alias gcom='gco main'

# ruby
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

# Git upstream branch syncer.
# Usage: gsync master (checks out master, pull upstream, push origin).
function gsync() {
 if [[ ! "$1" ]] ; then
     echo "You must supply a branch."
     return 0
 fi

 BRANCHES=$(git branch --list $1)
 if [ ! "$BRANCHES" ] ; then
    echo "Branch $1 does not exist."
    return 0
 fi

 git checkout "$1" && \
 git pull upstream "$1" && \
 git push origin "$1"
}

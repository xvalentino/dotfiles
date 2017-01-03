export EDITOR=vim # use vim
ZSH_THEME='pure' # theme
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

# alias
alias vls='npm run webpack-dashboard -- -m -c magenta --title ueshell -- npm run shell:classic'
alias :q='exit'
alias :wq='exit'
alias b='bundle'
alias be='b exec'
alias ga='git add'
alias vim='nvim -Nu ~/.vimrc'
alias gp='git push'
alias gd='git diff'
alias gf='git fetch'
alias bi='b install'
alias dev='cd ~/dev'
alias gb='git branch'
alias brake='be rake'
alias gs='git status'
alias gr='git remote'
alias gst='git status'
alias grb='git rebase'
alias brails='be rails'
alias work='cd ~/dev/work'
alias gra='git remote add'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias gcb='git checkout -b'
alias gcmsg='git commit -m'
alias sshpi='ssh pi@10.0.0.11'
alias gcm='git checkout master'
alias dotfiles='cd ~/.dotfiles/'
alias pb='cd ~/dev/work/partsbook'
alias 2module='cd ~/dev/turing/2module/'
alias 3module='cd ~/dev/turing/3module/'
alias 4module='cd ~/dev/turing/4module/'
alias notes='vim ~/dev/turing/3module/notes'
alias jorge='bundle install && rake db:setup'
alias pivot='cd ~/dev/turing/3module/the_pivot'
alias cdgo='cd ~/dev/turing/4module/projects/Go'
alias per='cd ~/dev/turing/3module/personal_project' 
alias rake='noglob rake' #so I can use rake with arguements in zsh
alias railsn='rails new -T --database=postgresql --skip-turbolinks'
alias steve='npm install && bower install || npm install || bower install'
alias sidekiq-stop="ps -ef | grep sidekiq | grep -v grep | awk '{print $2}' | xargs kill -9"

# functions
function update_dotfiles { # update dotfiles
echo 'Updating Dotfiles'
cd ~/.dotfiles && git pull
cd ~/Dev/turing
}

source $ZSH/oh-my-zsh.sh # use oh-my-zsh
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
PATH=${PATH}:/Users/Uchiha/Library/Android/sdk/platform-tools # export Android Debugging Bridge so I can execute adb anywhere
ulimit -n 10000 # limit shit so processes can't fork themselves infinitly and eat all of your memory. see https://en.wikipedia.org/wiki/Fork_bomb

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/user/local/bin:$PATH"

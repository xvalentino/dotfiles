export EDITOR=vim # use vim
ZSH_THEME='miloshadzic' # theme
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

# alias
alias :q='exit'
alias :wq='exit'
alias b="bundle"
alias be="b exec"
alias bu="b update"
alias vim='mvim -v'
alias dev="cd ~/dev"
alias bi="b install"
alias brake="be rake"
alias brails="be rails"
alias work="cd ~/dev/work"
alias ga="git add" # git add
alias sshpi="ssh pi@10.0.0.11"
alias dotfiles="cd ~/.dotfiles/"
alias pb="cd ~/dev/work/partsbook"
alias gs="git status" # git status alias
alias 2module="cd ~/dev/turing/2module/"
alias 3module="cd ~/dev/turing/3module/"
alias 4module="cd ~/dev/turing/4module/"
alias notes="vim ~/dev/turing/3module/notes"
alias jorge="bundle install && rake db:setup"
alias pivot="cd ~/dev/turing/3module/the_pivot"
alias gpu="git push --set-upstream origin HEAD"
alias cdgo='cd ~/dev/turing/4module/projects/Go'
alias zshrc="vim ~/.zshrc" # zshrc from where ever
alias vimrc="vim ~/.vimrc"  # vimrc from where ever
alias per="cd ~/dev/turing/3module/personal_project" 
alias rake='noglob rake' #so I can use rake with arguements in zsh
alias railsn="rails new -T --database=postgresql --skip-turbolinks"
alias steve="npm install && bower install || npm install || bower install"
plugins=(git) # git alias' and stuff

# functions
function update_dotfiles { # update dotfiles
echo "Updating Dotfiles"
cd ~/.dotfiles && git pull
cd ~/Dev/turing
}

source $ZSH/oh-my-zsh.sh # use oh-my-zsh
export NVM_DIR="/Users/VLS/.nvm" # use node version manager
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # loads nvm
PATH=${PATH}:/Users/VLS/Library/Android/sdk/platform-tools # export Android Debugging Bridge so I can execute adb anywhere
ulimit -n 10000 # limit shit so processes can't fork themselves infinitly and eat all of your memory. see https://en.wikipedia.org/wiki/Fork_bomb

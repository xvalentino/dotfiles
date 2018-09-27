export EDITOR=nvim # use vim
ZSH_THEME='hyperzsh' # theme
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

# alias
alias ga='git add'
alias vim='nvim -u ~/.vimrc'
alias gd='git diff'
alias gs='git status'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'

source $ZSH/oh-my-zsh.sh # use oh-my-zsh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
PATH=${PATH}:/Users/Uchiha/Library/Android/sdk/platform-tools
ulimit -n 10000
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/user/local/bin:$PATH"

# zsh-autosuggest
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=4

# Keep this at the end
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

##RVM IS BROKEN?## PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

##RVM IS BROKEN?##export PATH="$PATH:/usr/local/heroku/bin: .........."
# alias'
alias railsn="rails new -T --database=postgresql --skip-turbolinks"
alias rake='noglob rake' #so I can use rake with arguements in zsh
alias jorge="bundle install && rake db:setup"
alias sshpi="ssh pi@10.0.0.11"
alias per="cd ~/dev/turing/3module/personal_project" 
alias dotfiles="cd ~/.dotfiles/"
alias 2module="cd ~/dev/turing/2module/"
alias 3module="cd ~/dev/turing/3module/"
alias 4module="cd ~/dev/turing/4module/"
alias dev="cd ~/dev"
alias pivot="cd ~/dev/turing/3module/the_pivot"
alias vimrc="vim ~/.vimrc"  # vimrc from where ever
alias zshrc="vim ~/.zshrc" # zshrc from where ever
alias gs="git status" # git status alias
alias ga="git add" # git add
alias notes="vim ~/dev/turing/3module/notes"
alias fucked="push -f"
alias gpu="git push --set-upstream origin HEAD"
function gcmt {             # git commit with twitter
git commit -m "$1"
ruby -e 'require %(jumpstart_auth);JumpstartAuth.twitter.update(ARGV.join " ")' $1
}

function dotfile_update {
echo "Updating Dotfiles"
cd ~/.dotfiles && git pull
cd ~/Dev/turing
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

#  export PATH="/Users/VLS/.rvm/gems/ruby-2.1.5/bin:/Users/VLS/.rvm/gems/ruby-2.1.5@global/bin:/Users/VLS/.rvm/rubies/ruby-2.1.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/VLS/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##RVM BROKEN## export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#
#export PATH=${PATH}:/pathToTheAndroidSdkFolder/android-sdk-mac_86/platform-tools

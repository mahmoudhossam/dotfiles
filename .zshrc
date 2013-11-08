# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dst"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsv="git stash save"
alias gsc="git stash clear"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip heroku archlinux django colored-man go systemd)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/mahmoud/.gem/ruby/1.9.1/bin

# Activate "Command Not Found"
source /usr/share/doc/pkgfile/command-not-found.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
source ~/.autoenv/activate.sh

# Set Go workspace
export GOPATH=/home/mahmoud/Projects/Go

# Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
# Use Python 2.x
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
# Use corresponding virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv2
# Set up pip
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
# Where projects live
export PROJECT_HOME=$HOME/Projects
# Start virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh
# Use xterm's 256 color support
export TERM=xterm-256color

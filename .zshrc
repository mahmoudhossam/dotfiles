# Use antigen
source ~/.antigen/antigen.zsh
# Use xterm's 256 color support
export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsv="git stash save"
alias gsc="git stash clear"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

antigen bundle git
antigen bundle git-extras
antigen bundle heroku
antigen bundle debian
antigen bundle colored-man-pages
antigen bundle systemd
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

export PATH=PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/mahmoud/.gem/ruby/1.9.1/bin

source '/usr/share/powerline/bindings/zsh/powerline.zsh'
export POWERLINE_RIGHT_A="date"
export POWERLINE_RIGHT_B="time"
export POWERLINE_DETECT_SSH="true"
export POWERLINE_DISABLE_RPROMPT="false"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
#source ~/.autoenv/activate.sh

# Set Go workspace
export GOPATH=/home/mahmoud/Projects/Go

# Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
# Set up pip
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
# Where projects live
export PROJECT_HOME=$HOME/Projects
# Start virtualenvwrapper
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

export WINEARCH=win32

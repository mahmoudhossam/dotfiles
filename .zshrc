# Use antigen
source ~/.antigen/antigen.zsh
# Use xterm's 256 color support
export TERM="xterm-256color"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
antigen theme ys

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsv="git stash save"
alias gsc="git stash clear"
alias gdc="git diff --cached --color"
alias gpr="git pull-request"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

antigen bundle git
antigen bundle github
antigen bundle colored-man-pages
antigen bundle systemd
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle fabric
antigen bundle vagrant
antigen bundle docker
antigen bundle docker-compose

antigen apply

export GOPATH=/home/mahmoud/Projects/Go

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:.fzf/:$PATH

# Use fzf https://github.com/junegunn/fzf
. ~/.fzf/shell/key-bindings.zsh
. ~/.fzf/shell/completion.zsh

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# Activate fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export VISUAL=vim
export EDITOR=vim

# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_SCRIPT=/usr/share/virtualenvwrapper/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/share/virtualenvwrapper/virtualenvwrapper_lazy.sh

# Use base16 theme
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# enable "fuck"
eval $(thefuck --alias)

export XDG_CONFIG_HOME="$HOME/.config"

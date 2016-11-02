# Use antigen
source ~/.antigen/antigen.zsh
# Use xterm's 256 color support
export TERM="xterm-256color"

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
antigen bundle fabric
antigen bundle vagrant

antigen apply

export GOPATH=/home/mahmoud/Projects/Go

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:PATH

export VISUAL=vim

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

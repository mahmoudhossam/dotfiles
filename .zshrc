export ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$ADOTDIR/bundles
export POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
export POWERLEVEL9K_STATUS_VERBOSE=false
export POWERLEVEL9K_MODE='nerdfont-complete'
# Use antigen
source $ADOTDIR/antigen.zsh

# Use a 256 color terminal
export TERM="screen-256color"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENV_PYTHON=/usr/bin/python3
source /usr/bin/virtualenvwrapper_lazy.sh

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias gpr="git pull-request"
alias gap="git apply"
alias gma="git merge abort"
alias v="nvim"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

antigen bundle git
antigen bundle github
antigen bundle colored-man-pages
antigen bundle systemd
antigen bundle archlinux
antigen bundle command-not-found
antigen bundle web-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle fabric
antigen bundle vagrant
antigen bundle docker
antigen bundle docker-compose
antigen bundle virtualenv
antigen bundle virtualenvwrapper
antigen bundle tmux
antigen bundle git-extras
antigen bundle z
antigen bundle StackExchange/blackbox
antigen bundle zchee/go-zsh-completions

antigen apply

export GOPATH=/home/mahmoud/Projects/Go

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:.fzf/:$(ruby -rubygems -e "puts Gem.user_dir")/bin:/usr/bin/core_perl:$PATH

# Use fzf https://github.com/junegunn/fzf
. ~/.fzf/shell/key-bindings.zsh
. ~/.fzf/shell/completion.zsh

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files -L'

# Activate fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export VISUAL=vim
export EDITOR=vim

# Use base16 theme
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# enable "fuck"
eval $(thefuck --alias)

export XDG_CONFIG_HOME="$HOME/.config"

export WINEARCH=win32

export NVM_DIR="/home/mahmoud/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable gcloud completions
if [[ (( $+commands[gcloud] )) ]]; then
    source /opt/google-cloud-sdk/completion.zsh.inc
fi

# Enable kubectl completions
if [ $+commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

# Enable Helm completions
if [ $+commands[helm] ]; then
  source <(helm completion zsh)
fi


# Set up keychain
setopt extendedglob
eval $(keychain --eval --quiet --noask `ls ~/.ssh/id_^*pub`)

export TERMINAL=terminator

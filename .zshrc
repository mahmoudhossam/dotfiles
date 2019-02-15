export ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$ADOTDIR/bundles
export POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
export POWERLEVEL9K_STATUS_VERBOSE=false
export POWERLEVEL9K_MODE='nerdfont-complete'
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export TERM="screen-256color"
export TERMINAL=kitty
export DISABLE_AUTO_TITLE="true"
# Use antigen
source $ADOTDIR/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Aliases
alias zshconfig='"$EDITOR" ~/.zshrc'
alias gpr="git pull-request"
alias gap="git apply"
alias gma="git merge abort"
alias v="nvim"
alias kc="kubectl"
alias dcupd="docker-compose up -d"
alias reload="source ~/.zshrc"
alias tf="terraform"

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
antigen bundle tmux
antigen bundle git-extras
antigen bundle z
antigen bundle StackExchange/blackbox
antigen bundle zchee/go-zsh-completions

antigen apply

export GOPATH=/home/mahmoud/Projects/Go

export PATH=/usr/sbin:/sbin:$GOPATH/bin:$(ruby -e "puts Gem.user_dir")/bin:/usr/bin/core_perl:$HOME/.local/bin/:$PATH

# Use fzf https://github.com/junegunn/fzf
. /usr/share/fzf/key-bindings.zsh
. /usr/share/fzf/completion.zsh

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files -L'

export VISUAL=nvim
export EDITOR=nvim

# Use base16 theme
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# enable "fuck"
eval $(thefuck --alias)

export XDG_CONFIG_HOME="$HOME/.config"

export WINEARCH=win32

# Set up keychain
setopt extendedglob
eval $(keychain --eval --quiet --noask `ls ~/.ssh/id_^*pub`)

# Activate pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Load nvm
source /usr/share/nvm/init-nvm.sh

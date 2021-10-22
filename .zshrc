export ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$ADOTDIR/bundles
export TERM="screen-256color"
export DISABLE_AUTO_TITLE="true"
# Use antigen
source $ADOTDIR/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Theme
antigen theme sobolevn/sobole-zsh-theme
export SOBOLE_THEME_MODE="dark"
export SOBOLE_DONOTTOUCH_HIGHLIGHTING="true"

# Aliases
alias zshconfig='"$EDITOR" ~/.zshrc'
alias gpr="git pull-request"
alias gap="git apply"
alias gma="git merge abort"
alias v="nvim"
alias f="ranger"
alias kc="kubectl"
alias reload="source ~/.zshrc"
alias tf="terraform"
alias jn="jupyter notebook"

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
antigen bundle docker
antigen bundle docker-compose
antigen bundle virtualenv
antigen bundle tmux
antigen bundle git-extras
antigen bundle z
antigen bundle zchee/go-zsh-completions
antigen bundle romkatv/gitstatus
antigen bundle direnv

antigen apply

export GOPATH=$HOME/Projects/Go

export PATH=$GOPATH/bin:$(ruby -e "puts Gem.user_dir")/bin:/usr/bin/core_perl:$HOME/.local/bin:$PATH

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

export WINEARCH=win32

# Set up keychain
setopt extendedglob
eval $(keychain --eval --quiet --noask `ls ~/.ssh/id_^*pub`)

# Activate pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NODE_VERSIONS=$HOME/.nvm/versions/node/

# Load nvm
source /usr/share/nvm/init-nvm.sh
# Configure KDE 5 applications
export QT_QPA_PLATFORMTHEME=qt5ct

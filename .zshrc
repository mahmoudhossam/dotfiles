export ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$ADOTDIR/bundles
export TERM="screen-256color"
export DISABLE_AUTO_TITLE="true"
export SUDO_ASKPASS=/usr/lib/seahorse/ssh-askpass
export VISUAL=nvim
export EDITOR=nvim
export NODE_VERSIONS=$HOME/.nvm/versions/node/

# Use antigen
source $ADOTDIR/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Aliases
alias zshconfig='"$EDITOR" ~/.zshrc'
alias gpr="git pull-request"
alias gap="git apply"
alias gma="git merge abort"
alias v="nvim"
alias f="ranger"
alias kc="kubectl"
alias kns="kubens"
alias kctx="kubectx"
alias reload="source ~/.zshrc"
alias tf="terraform"
alias jn="jupyter notebook"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Use powerline
USE_POWERLINE="true"

antigen bundle archlinux
antigen bundle aws
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle direnv
antigen bundle docker
antigen bundle docker-compose
antigen bundle fabric
antigen bundle git
antigen bundle github
antigen bundle git-extras
antigen bundle golang
antigen bundle systemd
antigen bundle tmux
antigen bundle virtualenv
antigen bundle z
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Prompt theme
antigen theme bira

antigen apply

export GOPATH=$HOME/Projects/Go

export PATH=$GOPATH/bin:$(ruby -e "puts Gem.user_dir")/bin:$HOME/.local/bin:$HOME/.krew/bin:$PATH

# Use fzf https://github.com/junegunn/fzf
. /usr/share/fzf/key-bindings.zsh
. /usr/share/fzf/completion.zsh

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files -L'

# Use base16 theme
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# enable "fuck"
eval $(thefuck --alias)

# Activate pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Load nvm
source /usr/share/nvm/init-nvm.sh

# Configure KDE 5 applications
export QT_QPA_PLATFORMTHEME=qt5ct

# Set theme
current_theme=$(dconf read /org/gnome/desktop/interface/color-scheme)

if [[ "${current_theme:1:-1}" = "default" ]]; then

    base16_tomorrow

else

    base16_tomorrow-night
fi

# Git checkout with fzf
gch() {
 git checkout "$(git branch --all | fzf | tr -d \`\[:space:\]\`)"
}

# Use gpg agent as SSH agent
export SSH_AUTH_SOCK=/run/user/1000/gnupg/S.gpg-agent.ssh

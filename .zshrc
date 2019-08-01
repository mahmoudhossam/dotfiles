export ZSH_TMUX_AUTOSTART=true
export LC_MESSAGES=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ADOTDIR=$HOME/.antigen
export ANTIGEN_BUNDLES=$ADOTDIR/bundles
export PATH=$HOME/go/bin:/usr/local/opt/curl/bin:/usr/local/miniconda3/bin:/usr/local/opt/grep/libexec/gnubin:/usr/local/bin:/usr/sbin:/sbin:$(ruby -e "puts Gem.user_dir")/bin:$HOME/.local/bin/:$PATH
export TERM="screen-256color"
export DISABLE_AUTO_TITLE="true"
# Use antigen
source $ADOTDIR/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
antigen theme avit

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
antigen bundle tmux
antigen bundle git-extras
antigen bundle z
antigen bundle zchee/go-zsh-completions
antigen bundle romkatv/gitstatus

antigen apply


# Use fzf https://github.com/junegunn/fzf
. /usr/local/Cellar/fzf/0.18.0/shell/key-bindings.zsh
. /usr/local/Cellar/fzf/0.18.0/shell/completion.zsh

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

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
# Load nvm
source /usr/local/Cellar/nvm/0.34.0/nvm.sh

# GPG agent
export GPG_TTY=$(tty)

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

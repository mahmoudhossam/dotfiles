function v
    nvim $argv
end

if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-onedark.sh
end

set -xg GOPATH $HOME/Projects/Go
set -xg TERM screen-256color
set -g theme_nerd_fonts yes
set -g theme_color_scheme base16
set -g theme_display_vagrant yes

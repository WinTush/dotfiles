set fish_greeting ""

set -gx TERM xterm-256color

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vi nvim
<<<<<<< Updated upstream
command -qv lvim && alias lv lvim
command -qv python3 && alias python python3
=======

alias lvim ~/.local/bin/lvim && alias lv lvim
>>>>>>> Stashed changes

set -gx EDITOR nvim

# Go
set -gx PATH /usr/local/go/bin $PATH
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Exa
set -gx PATH /usr/local/bin/exa/bin $PATH
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# Set Caps lock as both Ctrl and Esc
if type -q xcape
  setxkbmap -option ctrl:nocaps
  xcape -e 'Control_L=Escape'
end

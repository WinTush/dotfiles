set fish_greeting ""
fortune_message

set -gx TERM xterm-256color

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vi nvim
command -qv python3 && alias python python3

set -gx PATH $HOME/.local/bin $PATH

if type -q lvim
  alias lv lvim
  set -gx EDITOR lvim
else
  set -gx EDITOR vi
end

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

# Rust and cargo
set -gx PATH $HOME/.cargo/bin $PATH


# thefuck --alias | source

if type -q rmtrash
  alias rm "rmtrash -f"
  alias rmdir rmdirtrash
end

# CS50
set -gx CC "clang"
set -gx CFLAGS "-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
set -gx LDLIBS "-lcrypt -lcs50 -lm"
set -gx LD_LIBRARY_PATH /usr/local/lib

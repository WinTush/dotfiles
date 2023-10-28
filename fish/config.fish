set fish_greeting ""

set -gx TERM xterm-256color

# aliases
alias g git
command -qv nvim && alias vi nvim
command -qv lvim && alias lv lvim
command -qv python3 && alias python python3

set -gx PATH $HOME/.local/bin $PATH

if type -q nvim
    set -gx EDITOR nvim
else
    set -gx EDITOR vi
end

# Go
set -gx PATH /usr/local/go/bin $PATH
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Eza
if type -q eza
    alias ls "eza --icons -g"
else
    alias ls "ls -p --color=auto"
end

alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# Rust and cargo
set -gx PATH $HOME/.cargo/bin $PATH


# thefuck --alias | source

if type -q rmtrash
    alias rm "rmtrash -f"
    alias rmdir rmdirtrash
end


# pyenv
if type -q pyenv
    pyenv init - | source
    status --is-interactive; and pyenv virtualenv-init - | source
    alias pyv "pyenv virtualenv"
    alias pya "pyenv activate"
    alias pyd "pyenv deactivate"
end

# CS50
# set -gx CC "clang"
# set -gx CFLAGS "-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
# set -gx LDLIBS "-lcrypt -lcs50 -lm"
# set -gx LD_LIBRARY_PATH /usr/local/lib

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -l os (uname)
switch (uname)
    case Darwin
        eval "$(/opt/homebrew/bin/brew shellenv)"
    case Linux
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

set -gx NVM_DIR "$HOME/.nvm"
set -gx EDITOR "vim"
set -gx VISUAL "vim"
set PATH "$HOME/.local/bin" $PATH

starship init fish | source
direnv hook fish | source
fzf --fish | source

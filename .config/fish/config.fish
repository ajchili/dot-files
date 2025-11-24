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

set PATH $PATH "$HOME/.local/bin"

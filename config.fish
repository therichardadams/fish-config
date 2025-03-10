if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting
eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx VISUAL nvim
set -gx EDITOR nvim

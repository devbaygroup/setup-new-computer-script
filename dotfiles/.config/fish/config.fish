################
# FISH
################
# default
set PATH ~/.local/bin /usr/local/bin /opt/homebrew/bin /bin /sbin /usr/bin /usr/sbin /usr/local/sbin

# for making escape key work as meta, need to suppress it
set fish_escape_delay_ms 3000

# suppress fish_greeting message
set -g fish_greeting


################
# PROMPT
################
### STARSHIP
starship init fish | source


################
# pyenv
################
set -g PYENV_ROOT $HOME/.pyenv
set PYENV_VERSION 3.10.3
status is-interactive; and pyenv init --path | source
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source


################
# pipenv
################
set pipenv_fish_fancy yes


################
# git
################
function gg
    git log --graph --oneline --all
end

function diff
    colordiff $argv
end

function diff-latest
    git diff HEAD~1..HEAD
end

function diff
    difft $argv
end


################
# cli
################
function ls
    exa --icons -1 --group-directories-first $argv
end

function cat
    bat $argv
end

function dig
    dog $argv
end

function du
    dust $argv
end

function ps
    procs $argv
end

function vi
    nvim $argv
end

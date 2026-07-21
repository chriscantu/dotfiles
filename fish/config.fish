starship init fish | source

if status is-interactive
    # git abbreviations (expand inline before running)
    abbr -a gst git status
    abbr -a ga git add
    abbr -a gc git commit
    abbr -a gco git checkout
    abbr -a gsw git switch
    abbr -a gb git branch
    abbr -a gd git diff
    abbr -a gp git push
    abbr -a gl git pull
    abbr -a glog git log --oneline --graph --decorate
end
eval (/opt/homebrew/bin/brew shellenv)
set -g fish_greeting ""
export PATH="$HOME/.local/bin:$PATH"
zoxide init fish | source

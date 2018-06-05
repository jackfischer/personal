alias l "ls -al"

alias g "git"
alias gs "git status"
alias gp "git pull"
alias gpull "git pull"
alias gpush "git push"
alias gl "git log"
alias gc "git commit"
alias ga "git add"
alias gcheck "git checkout"
alias gd "git diff"
alias gdc "git diff --cached"
alias gb "git branch"
alias gr "git remote -v"
alias gx "gx"
alias py "pyenv versions"

status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

set -gx PATH $PATH /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
set -gx PATH $PATH /Applications/MacVim.app/Contents/bin/

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

status --is-interactive; and source (nodenv init -|psub)

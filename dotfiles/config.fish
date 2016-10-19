alias rome "ssh root@jackfischer.me"
alias wgetmirror "wget -E -H -k -K -p "
alias wgetreq "wget -p -k"
alias nmap "nmap -T4 -A -v"
alias l "ls -al"

alias g "git"
alias gs "git status"
alias gp "git pull"
alias gpush "git push"
alias gl "git log"
alias gc "git commit"
alias ga "git add"
alias gcheck "git checkout"
alias gd "git diff"
alias gdc "git diff --cached"
alias gb "git branch"
alias gr "git remote -v"
alias py "pyenv versions"
alias sub "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"

set -U EDITOR /usr/bin/mvim

status --is-interactive; and . (pyenv init -|psub)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -gx MANPATH "$MANPATH:/usr/local/opt/erlang/lib/erlang/man"

## OPAM configuration
#. /Users/jack/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true

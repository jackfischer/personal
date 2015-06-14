# cd to the path of the front Finder window
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
        cd ~/Desktop
    fi
}

# python server
alias twistd="twistd -no web --path=."
#alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias wgetmirror="wget -E -H -k -K -p "
alias wgetreq="wget -p -k"
alias nmap="nmap -T4 -A -v"
alias htop="sudo htop"

alias gs="git status"
alias gp="git pull"
alias gpush="git push"
alias gc="git commit"
alias ga="git add --all"
alias gcheck="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"

export EDITOR=/usr/bin/mvim
export PYTHONSTARTUP=$HOME/.pythonrc

plugins=(brew jsontools npm node pip python zsh-syntax-highlighting virtualenvwrapper)




# Really handy, cd to the path of the current finder window, I know there are
# other ways to do this but I'm a big fan of this set up
cdf() {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" != "" ]; then
	cd "$target"; pwd
	else
	echo 'No Finder window found' >&2
	fi
}

# quick drop in python server
alias twistd="twistd -no web --path=."

# View a quick directory tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# grab a page and all the required resources
alias wgetmirror="wget -E -H -k -K -p "


alias vim="MVimBinarySym"
alias oldvim="/usr/bin/vim"
alias gs="git status"
alias gp="git pull"
alias gc="git commit"
alias ga="git add --all"



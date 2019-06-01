alias home="cd ~/"
alias refresh="source ~/.bashrc"
alias stree="find ./ -type d -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias compile="g++ -Wall -g -O -Wshadow"

function quickpush(){
	git add -A
	git commit -m 'quickpush'
	git push
}

function updatedotfiles(){
	cwd=$(pwd)
	cd ~/.dotfiles
	git pull
	quickpush
	cd $cwd
}

function vimrc(){
	vcwd=$(pwd)
	vim ~/.vimrc
	cd $cwd
}

function bashrc(){
	bcwd=$(pwd)
	vim ~/.bashrc
	cd $cwd
}
#alias vimrc="vim ~/.vimrc"
#alias bashrc="vim ~/.bashrc"
PS1="\n${debian_chroot:+($debian_chroot)}\u@\h\n"



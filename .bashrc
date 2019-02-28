alias home="cd ~/"
alias refresh="source ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"

function quickpush(){
	git add -A
	git commit -m 'quickpush'
	git push
}
function pushdotfiles(){
	CURPATH=$(pwd)
	cd ~/.dotfiles
	quickpush
	cd CURPATH

}

PS1="\n${debian_chroot:+($debian_chroot)}\u@\h\n🍆 "



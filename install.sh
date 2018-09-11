
sudo apt install fortune -y
sudo apt install git terminator -y


git config --global user.name "Eduardo Novella"
git config --global user.email ednolo@inf.upv.es

function do_backups() {
	sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
	cp ~/.bashrc ~/.bashrc.bak
	cp -rf ~/.config ~/.config.bak
}

function do_updates() {
	sudo cp vimrc /etc/vim/vimrc
	cp .bashrc ~/.bashrc
	cp -rf .config ~/.config
}

do_backups
do_updates

exit 0
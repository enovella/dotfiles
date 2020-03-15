
sudo apt install fortune -y
sudo apt install git terminator -y
sudo apt install vim code -y

git config --global user.name "Eduardo Novella"
git config --global user.email enovella@nowsecure.com
git config --global credential.helper cache


function do_backups() {
	sudo cp /etc/vim/vimrc /etc/vim/vimrc.bak
	cp ~/.bashrc ~/.bashrc.bak
	cp -rf ~/.config ~/.config.bak
}

function do_updates() {
	sudo cp vimrc /etc/vim/vimrc
	cp .bashrc ~/.bashrc
	cp -rf .config/* ~/.config/
	cat .vscode/extensions.list | xargs -L 1 code --install-extension
	cp idapro/*.cfg ~/ida-7*/cfg/
	cp .* ~/
}

do_backups
do_updates

exit 0

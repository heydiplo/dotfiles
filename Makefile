install:

	rm ~/.bashrc; true
	ln -s `pwd`/.bashrc ~/.bashrc

	rm ~/.bash_profile; true
	ln -s `pwd`/.bash_profile ~/.bash_profile

	rm ~/.vimrc; true
	ln -s `pwd`/.vimrc ~/.vimrc

	rm ~/.vim; true
	ln -s `pwd`/.vim ~/.vim
	rm -f `pwd`/.vim/.vim

	rm ~/.gitconfig; true
	ln -s `pwd`/.gitconfig ~/.gitconfig

	rm ~/.irbrc; true
	ln -s `pwd`/.irbrc ~/.irbrc

	rm ~/.gemrc; true
	ln -s `pwd`/.gemrc ~/.gemrc

	rm ~/.ctags; true
	ln -s `pwd`/.ctags ~/.ctags

	rm ~/.tmux.conf; true
	ln -s `pwd`/.tmux.conf ~/.tmux.conf

	rm -rf ~/.oh-my-zsh; true
	ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

	rm ~/.zshrc; true
	ln -s `pwd`/.zshrc ~/.zshrc

	rm ~/workon.sh; true
	ln -s `pwd`/workon.sh ~/workon.sh
	chmod +x ~/workon.sh

	mkdir -p `pwd`/.vim/undodir

install:

	rm ~/.bashrc
	ln -s `pwd`/.bashrc ~/.bashrc

	rm ~/.bash_profile
	ln -s `pwd`/.bash_profile ~/.bash_profile

	rm ~/.vimrc
	ln -s `pwd`/.vimrc ~/.vimrc

	rm ~/.vim
	ln -s `pwd`/.vim ~/.vim
	rm -f `pwd`/.vim/.vim

	rm ~/.gitconfig
	ln -s `pwd`/.gitconfig ~/.gitconfig

	rm ~/.irbrc
	ln -s `pwd`/.irbrc ~/.irbrc

	rm ~/.gemrc
	ln -s `pwd`/.gemrc ~/.gemrc

	rm ~/.ctags
	ln -s `pwd`/.ctags ~/.ctags

	rm ~/.tmux.conf
	ln -s `pwd`/.tmux.conf ~/.tmux.conf

	rm -rf ~/.oh-my-zsh
	ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

	rm ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc

	mkdir -p `pwd`/.vim/undodir

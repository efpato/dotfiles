home
====

Config files for $HOME

# neovim
```bash
ln -s `pwd`/vim ~/.vim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall
```

# git
```bash
ln -s `pwd`/git/gitconfig ~/.gitconfig
```

home
====

Config files for $HOME

# neovim
```bash
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s `pwd`/vim ~/.vim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
ln -s ~/.vim/coc-settings.json ~/.config/nvim/coc-settings.json
nvim +PlugInstall +qall
```

# git
```bash
ln -s `pwd`/git/gitconfig ~/.gitconfig
ln -s `pwd`/git/gitignore_global ~/.gitignore_global
```

# pylint
```bash
ln -s `pwd`/pylint/.pylintrc ~/pylintrc
```

home
====

Config files for $HOME

# neovim
```bash
ln -s <repo>/vim ~/.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall
```

# git
```bash
ln -s <repo>/git/gitconfig ~/.gitconfig
```

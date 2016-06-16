home
====

Config files for $HOME

# Vim
```bash
ln -s <repo>/vim ~/.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall
```

# Git
```bash
ln -s <repo>/git/gitconfig ~/.gitconfig
```

Fresh install:

```
git clone git@github.com:echosa/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

Update existing:

```
cd ~/.vim
git pull
git submodule init
git submodule update
```

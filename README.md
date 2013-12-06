# Dotfiles

This is [Tony Fabeen] (https://github.com/tonyfabeen)'s dot f*** files for Mac and Linux users.

## Vim Instalation

First of all you need to clone the repo
```sh
cd ~
git clone https://github.com/rogerleite/Dotfiles.git
```

Install Pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle; \\
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
```

Install Vundle
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Use .vimrc

```
cd $HOME
ln -s ~/Dotfiles/.vimrc .vimrc
ln -s ~/Dotfiles/.vim/colors ~/.vim/colors
```

Get Vundle Dependencies
```
vim +BundleInstall +qall
```



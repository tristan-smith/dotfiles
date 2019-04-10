# dotfiles

## Vim Setup
Install [Vim-Plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Replace local configuration with this configuration (probably don't do this on someone else's machine)
```
curl -fLo ~/.vimrc https://raw.githubusercontent.com/tristan-smith/dotfiles/master/.vimrc
vim
:PlugInstall
```

## Tmux Setup
```
$ curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/tristan-smith/dotfiles/master/.tmux.conf
```

curdir=$(readlink -f $(dirname $0))

ln -s $curdir/.zshrc $HOME/.zshrc
ln -s $curdir/.zsh $HOME/.zsh
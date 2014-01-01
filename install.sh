#! /bin/bash

vim_dir=$(dirname "$0")

pushd ~

answer=y
if [ -f .vimrc ]; then
    echo -n '.vimrc already exist, overwrite?(y/n)'
    read answer
fi

case $answer in
    y|Y) echo installing $vim_dir/_vimrc to ~/.vimrc
         rm -f .vimrc
         ln -s $vim_dir/_vimrc .vimrc
         ;;
esac

answer=y
if [ -f .gvimrc ]; then
    echo -n '.gvimrc already exist, overwrite?(y/n)'
    read answer
fi

case $answer in
    y|Y) echo installing $vim_dir/_gvimrc to ~/.gvimrc
         rm -f .gvimrc
         ln -s $vim_dir/_gvimrc .gvimrc
         ;;
esac

answer=y
if [ -L .vim ]; then
    echo -n '.vim already exist, overwrite?(y/n)'
    read answer
elif [ -d .vim ]; then
    echo -n .vim is a directoy
    answer=n
fi

case $answer in
    y|Y) echo installing $vim_dir/vimfiles to ~/.vim
         rm -f .vim
         ln -s $vim_dir/vimfiles .vim
         ;;
esac

popd

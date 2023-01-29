#! /bin/bash

"$(pwd)/install.sh"
vim_dir=$(cd $(dirname "$0") && pwd)

nvim_init_dir=~/.config/nvim
mkdir -p $nvim_init_dir

pushd $nvim_init_dir

if [ -f init.vim ]; then
    echo -n 'init.vim already exists, overwrite?(y/n)'
    read answer
fi

case $answer in
    y|Y) echo installing $vim_dir/init.vim to ~/.config/nvim/init.vim
         rm -f init.vim
         ln -s $vim_dir/init.vim init.vim
         ;;
esac

popd

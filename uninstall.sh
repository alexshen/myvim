#! /bin/bash

vim_dir=$(cd $(dirname "$0") && pwd)

echo "Uninstalling Vim config..."
echo ""

reverse_symlink() {
    local path="$1"
    if [ -L "$path" ]; then
        local target=$(readlink "$path")
        rm -f "$path"
        echo "  Removed $path -> $target"
    elif [ -f "$path" ]; then
        echo "  Skipping $path (not a symlink)"
    elif [ -d "$path" ]; then
        echo "  Skipping $path (not a symlink)"
    else
        echo "  $path does not exist, skipping"
    fi
}

# Vim: .vimrc
reverse_symlink ~/.vimrc

# Vim: .gvimrc
reverse_symlink ~/.gvimrc

# Vim: .vim -> vimfiles
reverse_symlink ~/.vim

echo ""
echo "Uninstalling Neovim config..."

# Neovim: init.vim
reverse_symlink ~/.config/nvim/init.vim

echo ""
echo "Done."

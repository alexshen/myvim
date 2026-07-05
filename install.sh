#! /bin/bash

vim_dir=$(cd $(dirname "$0") && pwd)

prompt_overwrite() {
    local path="$1"
    local label="$2"
    if [ -f "$path" ] || [ -L "$path" ]; then
        echo -n "$label already exists, overwrite?(y/n) "
        read answer
        case $answer in
            y|Y) rm -f "$path"
                 ln -s "$vim_dir/$3" "$path"
                 echo "  $path -> $vim_dir/$3"
                 ;;
        esac
    else
        ln -s "$vim_dir/$3" "$path"
        echo "  $path -> $vim_dir/$3"
    fi
}

echo "Installing Vim config..."
echo ""

# Vim: .vimrc
prompt_overwrite ~/.vimrc ".vimrc" "_vimrc"

# Vim: .gvimrc
prompt_overwrite ~/.gvimrc ".gvimrc" "_gvimrc"

# Vim: vimfiles -> .vim
if [ -d ~/.vim ] && [ ! -L ~/.vim ]; then
    echo "  .vim is a directory, skipping (remove manually if you want to replace it)"
else
    prompt_overwrite ~/.vim ".vim" "vimfiles"
fi

echo ""
echo "Installing Neovim config..."

# Neovim: init.vim
nvim_init_dir=~/.config/nvim
mkdir -p "$nvim_init_dir"
prompt_overwrite "$nvim_init_dir/init.vim" "init.vim" "init.vim"

#! /bin/bash

vim_dir=$(cd $(dirname "$0") && pwd)

prompt_overwrite() {
    local path="$1"
    local name="$(basename "$path")"
    if [ -f "$path" ] || [ -L "$path" ]; then
        echo -n "$name already exists, overwrite?(y/n) "
        read answer
        case $answer in y|Y) rm -f "$path" ;; *) return ;; esac
    fi
    ln -s "$vim_dir/$2" "$path"
    echo "  $path -> $vim_dir/$2"
}

echo "Installing Neovim config..."
echo ""

# Neovim: init.vim
nvim_init_dir=~/.config/nvim
mkdir -p "$nvim_init_dir"
prompt_overwrite "$nvim_init_dir/init.vim" "init.vim"

# Runtime files: vimfiles -> ~/.vim
if [ -d ~/.vim ] && [ ! -L ~/.vim ]; then
    echo "  .vim is a directory, skipping (remove manually if you want to replace it)"
else
    prompt_overwrite ~/.vim "vimfiles"
fi

echo ""
echo "Done."

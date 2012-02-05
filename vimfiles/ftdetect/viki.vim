" Added by Shen, Alex
" Date: 2010-2-6, Sat
" Purpose: Auto detect viki files

let g:vikiNameSuffix=".viki"
autocmd! BufRead,BufNewFile *.viki set filetype=viki


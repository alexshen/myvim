" Author: Alex Shen
" Date: 2011-2-1
" Purpose: Add custom file type detection
au BufRead,BufNew *.wlua   set ft=lua
au BufRead,BufNew Jamfile  set ft=jam
au BufRead,BufNew Jamrules set ft=jam
au BufRead,BufNew Jambase  set ft=jam

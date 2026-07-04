" ── Shared Vim/Neovim settings (no !has('nvim') guards here) ──

filetype plugin indent on

set hidden
set modeline
" breaking for characters greater than 255, such as Chinese
" join comment lines
set fo+=mj

" cmd height 2
set ch=2

" Hide the mouse when typing text
set mousehide

" I like highlighting strings inside C comments
let c_comment_strings=1

set hlsearch
syntax on
set langmenu=en_US
let $LANG='en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if has('unix') || has('macunix')
    set ffs=unix
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

au FileType haskell setlocal shiftwidth=2 tabstop=2

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
if $VIM_COLORSCHEME != ''
    colorscheme $VIM_COLORSCHEME
endif
if $VIM_GUIFONT != ''
    " don't know why direct setting guifont doesn't work
    " exec does the job
    exec "set guifont=" . $VIM_GUIFONT
endif

set noerrorbells visualbell t_vb=
set ignorecase smartcase
set smarttab
set encoding=utf-8
set backspace=indent,eol,start
set number
set relativenumber
set guioptions-=T " no tool bar
set incsearch
set ruler
" g0, indent public, private
" :0, indent case label
" l1, align with the case label
" t0, don't indent function return type
" (0, line up the first character with the unclose parathese
set cindent cino+=g0,:0,l1,t0,(0

"match xml or html tags
set mps+=<:>

" disable win alt keys
set wak=no

let mapleader = "\<Space>"

set completeopt=longest,menuone

" 1. search tags in the directory where the current file is
" 2. search in the current working directory
" 3. search upward until the root
" See file-search, tags-option for details
set tags+=./tags,tags;

imap <C-BS> <C-W>
imap <C-DEL> <ESC>lcw

nnoremap <silent> \\ :nohlsearch<CR>
" save one keystroke for typing command
noremap ; :
noremap : ;

" Y yanks whole line (same as yy)
nnoremap Y yy

" Enable <c-h,j,k,l> to navigate among windows (uses tmux-navigator if available)
noremap <silent> <C-J> :TmuxNavigateDown<CR>
noremap <silent> <C-K> :TmuxNavigateUp<CR>
noremap <silent> <C-H> :TmuxNavigateLeft<CR>
noremap <silent> <C-L> :TmuxNavigateRight<CR>

" Tagbar
" make it appear on the left by default
let g:tagbar_left = 1
"nnoremap <silent> <C-S-T> :TagbarToggle<CR>
let g:NERDTreeWinPos = 'right'
"nnoremap <silent> <F3> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|hg|svn)|obj$',
            \ 'file': '\v\.(exe|so|obj|swp|ii|user|suo)',
            \ }
let g:ctrlp_max_files = 0
let g:ctrlp_open_new_file = 'ij'
let g:ctrlp_open_multiple_files = 'ij'
let g:ctrlp_clear_cache_on_exit = 0
let ctrlp_user_cmd_unix = 'find %s -type f'  " MacOSX/Linux
let ctrlp_user_cmd_win = 'dir %s /-n /b /s /a-d'  " Windows
let g:ctrlp_user_command = {
            \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files -co --exclude-standard | sort'],
            \ },
            \ 'fallback': has('unix') ? ctrlp_user_cmd_unix : ctrlp_user_cmd_win
            \ }

nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>tt :CtrlPTag<CR>
nnoremap <Leader>tb :CtrlPBufTag<CR>
nnoremap <Leader>r :CtrlPMRU<CR>

" remap to avoid conflict with mappings for window navigation
nmap <C-N> <Plug>IMAP_JumpForward
vmap <C-N> <Plug>IMAP_JumpForward
"imap <C-N> <Plug>IMAP_JumpForward

" Latex-Suite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -interaction=nonstopmode -shell-escape $*'
let g:Tex_ViewRule_pdf = 'mupdf'

" enhanced cpp highlight
let g:cpp_class_scope_highlight = 1
" let g:cpp_experimental_template_highlight = 1

" a.vim
" : not working with meta-key, don't know why
nmap <silent> <Leader>a ;A<CR>

let g:alternateExtensions_h = "cpp,cxx,cc,CC,c"
let g:alternateExtensions_H = "CPP,CXX,CC,C"
" unmap the unexpected default mappings which cause input delay
autocmd VimEnter * silent! iunmap <Leader>ihn
autocmd VimEnter * silent! iunmap <Leader>is
autocmd VimEnter * silent! iunmap <Leader>ih

nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
nmap <Leader>- <Plug>AirlineSelectPrevTab
nmap <Leader>+ <Plug>AirlineSelectNextTab

" make sure airline is always visible
set laststatus=2
set showtabline=2

" tern
let g:tern_show_signature_in_pum = 1

" nerd tree
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>

" easy align
vmap <CR> <Plug>(EasyAlign)

function! CreateDirIfNotExist(dir)
    if ! isdirectory(a:dir)
        call mkdir(a:dir)
    endif
endfunction

" setup the backup directories
call CreateDirIfNotExist($HOME . '/.vim/backup/')
call CreateDirIfNotExist($HOME . '/.vim/swap/')
call CreateDirIfNotExist($HOME . '/.vim/undo/')

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

set ttimeoutlen=0 timeoutlen=1000

" show keystrokes in status line
set showcmd

" use i-beam cursor in insert mode, works in iTerm2 but not in Terminal
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  if exists('+t_SR')
      let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  endif
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  if exists('+t_SR')
      let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  endif
endif

set tw=79
" show the visual width limit
set cc=80
set splitbelow

" j, k          Store relative line number jumps in the jumplist.
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" window management
nnoremap <silent> <Leader>ww :ChooseWin<CR>
nnoremap <silent> <Leader>w= <C-w>=
" preview the tag under the cursor
nnoremap <silent> <Leader>tp <C-w>}

" delete all other buffers
nnoremap <silent> <Leader>B :BufOnly<CR>

" distraction free reading
nnoremap <silent> <Leader>R :Goyo<CR>

"let g:buftabline_numbers = 2
"nmap <leader>1 <Plug>BufTabLine.Go(1)
"nmap <leader>2 <Plug>BufTabLine.Go(2)
"nmap <leader>3 <Plug>BufTabLine.Go(3)
"nmap <leader>4 <Plug>BufTabLine.Go(4)
"nmap <leader>5 <Plug>BufTabLine.Go(5)
"nmap <leader>6 <Plug>BufTabLine.Go(6)
"nmap <leader>7 <Plug>BufTabLine.Go(7)
"nmap <leader>8 <Plug>BufTabLine.Go(8)
"nmap <leader>9 <Plug>BufTabLine.Go(9)
"nmap <leader>0 <Plug>BufTabLine.Go(10)

"augroup ClangFormatSettings
    "autocmd!
    "" map to <Leader>= in C++ code
    "autocmd FileType c,cpp,objc nnoremap <buffer><Leader>= :<C-u>ClangFormat<CR>
    "autocmd FileType c,cpp,objc vnoremap <buffer><Leader>= :ClangFormat<CR>
"augroup END

" easymotion
let g:EasyMotion_smartcase = 1
map <Leader>s <Plug>(easymotion-s)
map <Leader>/ <Plug>(easymotion-sn)
map <Leader>. <Plug>(easymotion-repeat)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

nnoremap <Leader>= :Autoformat<CR>
vnoremap <Leader>= :Autoformat<CR>
nnoremap <Leader>- :AutoformatLine<CR>

let g:formatdef_ormolu_haskell = '"ormolu --no-cabal"'
let g:formatters_haskell = ['ormolu_haskell']

" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor

" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0

" Set following to show "<CAPS>" in the status line when "Caps Lock" is on.
let b:keymap_name = "CAPS"


" terminal
if has('terminal')
    tnoremap <Esc> <C-\><C-n>
endif

" undotree
let g:undotree_SplitWidth = 35

noremap <F4> :UndotreeToggle<CR>

if has("persistent_undo")
    set undofile
endif

function g:Undotree_CustomMap()
    nmap <buffer> J <plug>UndotreeGoNextState
    nmap <buffer> K <plug>UndotreeGoPreviousState
endfunc

function! ToggleSpellCheck()
    if &spell == 1
        setlocal nospell
    else
        setlocal spell spelllang=en
    endif
endfunc

nnoremap <Leader>S :call ToggleSpellCheck()<CR>

function! ToggleUnnamedClipboard()
    if stridx(&clipboard, 'unnamedplus') != -1
        setlocal clipboard-=unnamedplus,unnamed
    else
        setlocal clipboard+=unnamedplus,unnamed
    endif
endfunc

nnoremap <Leader>P :call ToggleUnnamedClipboard()<CR>
inoremap jk <ESC>

let g:syntastic_go_checkers = ['golint', 'govet']

au FileType go nnoremap <silent> <F1> :GoDoc<CR>
au FileType go nnoremap <silent> <F2> :GoRename<CR>
au FileType go nnoremap <silent> <F7> :GoBuild<CR>

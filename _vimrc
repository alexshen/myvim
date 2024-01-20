set nocompatible
set t_ut=
filetype off

if empty(glob('~/.vim/autoload/plug.vim')) && executable('curl')
    silent !curl -kfLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/bundle')

Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite-help'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'Shougo/neoyank.vim'
Plug 'tsukkee/unite-tag'
Plug 't9md/vim-choosewin'
Plug 'preservim/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
"Plug 'ap/vim-buftabline'
Plug 'easymotion/vim-easymotion'


" snip mate plugin and dependencies
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'

Plug 'honza/vim-snippets'
" Plug 'LaTeX-Suite-aka-Vim-LaTeX'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-colorscheme-switcher'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'dbakker/vim-projectroot'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/a.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'elzr/vim-json'
Plug 'schickling/vim-bufonly'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'einars/js-beautify'
" Plug 'vim-ctrlspace/vim-ctrlspace.git'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
" Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tikhomirov/vim-glsl'
Plug 'rhysd/vim-clang-format'
Plug 'mbbill/undotree'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline-themes'

if has('nvim')
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
endif

call plug#end()
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

" super tab, user defined completion
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1
set completeopt=longest,menuone

" 1. search tags in the directory where the current file is
" 2. search in the current working directory
" 3. search upward until the root
" See file-search, tags-option for details
set tags+=./tags,tags;
if !has('nvim')
    set cscopetag
endif

imap <C-BS> <C-W>
imap <C-DEL> <ESC>lcw

nnoremap <silent> \\ :nohlsearch<CR>
" save one keystroke for typing command
noremap ; :
noremap : ;

" Enable <c-h,j,k,l> to navigate among windows
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

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


" Ycm
let g:ycm_server_keep_logfiles = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_filetype_blacklist = { 'tex' : 1, 'json' : 1 }
"let g:ycm_filetype_specific_completion_to_disable = { 'tex' : 1 }
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_complete_in_comments = 1

autocmd FileType c,cpp,objc,objcpp,cs,go,javascript,python,rust,typescript nnoremap <Leader>gdf :YcmCompleter GoToDefinition<CR>
autocmd FileType c,cpp,objc,objcpp,cs,go,python,rust nnoremap <Leader>gdl :YcmCompleter GoToDeclaration<CR>
autocmd FileType c,cpp,objc,objcpp nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>yd :YcmDiags<CR>
nnoremap <Leader>yf :YcmCompleter FixIt<CR>

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
autocmd VimEnter * iunmap <Leader>ihn
autocmd VimEnter * iunmap <Leader>is
autocmd VimEnter * iunmap <Leader>ih

" airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#exclude_preview = 1

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

" This is slow, so disable it
let g:airline#extensions#tagbar#enabled = 0
let g:airline_detect_iminsert = 1

" make sure airline is always visible
set laststatus=2

" tern
let g:tern_show_signature_in_pum = 1

" nerd tree
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>

" easy align
vmap <CR> <Plug>(EasyAlign)

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

let g:UltiSnipsExpandTrigger="<c-l>"
exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

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

" map meta key
if !has('nvim')
    let c='a'
    while c <= 'z'
        exec "set <M-".c.">=\<Esc>".c
        exec "nmap \<Esc>".c." <M-".c.">"
        exec "imap \<Esc>".c." <M-".c.">"
        let c = nr2char(1+char2nr(c))
    endw
endif

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


" Unite settings
" Like ctrlp.vim settings.
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 10,
\   'direction': 'botright',
\ })

"call unite#custom#source('file,file/new,buffer,file_rec/async', 'matchers', 'matcher_fuzzy')
"call unite#custom#profile('files,file_rec/async', 'filters', ['sorter_rank'])
"call unite#custom#source('tag', 'matchers', 'matcher_fuzzy')

nnoremap [unite] <Nop>
nnoremap , [unite]

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
    " Overwrite settings.

    imap <buffer> jj      <Plug>(unite_insert_leave)
    "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

    imap <buffer><expr> j unite#smart_map('j', '')
    imap <buffer> <TAB>   <Plug>(unite_select_next_line)
    imap <buffer> <S-TAB> <Plug>(unite_select_previous_line)
    imap <buffer> <C-j> <Plug>(unite_select_next_line)
    imap <buffer> <C-k> <Plug>(unite_select_previous_line)
    "imap <buffer> '     <Plug>(unite_quick_match_default_action)
    "nmap <buffer> '     <Plug>(unite_quick_match_default_action)
    imap <buffer><expr> x
                \ unite#smart_map('x', "\<Plug>(unite_quick_match_jump)")
    nmap <buffer> x     <Plug>(unite_quick_match_jump)
    nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
    imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
    nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
    nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
    imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
    nnoremap <silent><buffer><expr> l
                \ unite#smart_map('l', unite#do_action('default'))

    let unite = unite#get_current_unite()
    if unite.profile_name ==# 'search'
        nnoremap <silent><buffer><expr> r     unite#do_action('replace')
    else
        nnoremap <silent><buffer><expr> r     unite#do_action('rename')
    endif

    nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
    nnoremap <buffer><expr> S      unite#mappings#set_current_sorters(
                \ empty(unite#mappings#get_current_sorters()) ?
                \ ['sorter_reverse'] : [])

    " Runs "split" action by <C-s>.
    imap <silent><buffer><expr> <C-s>     unite#do_action('split')
endfunction"}}}

"nnoremap <silent> <Leader>f :<C-u>Unite -buffer-name=files   file_rec/async<cr>
"nnoremap <silent> <Leader>fp :<C-u>UniteWithProjectDir -buffer-name=files  file_rec/async<cr>
"nnoremap <silent> <Leader>fc :<C-u>UniteWithCurrentDir -buffer-name=files  file_rec/async<cr>
"nnoremap <silent> <Leader>fb :<C-u>UniteWithBufferDir -buffer-name=files   file_rec/async<cr>
"nnoremap <silent> <Leader>r :<C-u>Unite -buffer-name=mru     file_mru<cr>
nnoremap <silent> <Leader>o :<C-u>Unite -buffer-name=outline outline<cr>
nnoremap <silent> <Leader>Y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> <Leader>H :<C-u>Unite -buffer-name=help    help<cr>
nnoremap <silent> <Leader>S :<C-u>Unite -buffer-name=session session<cr>
"nnoremap <silent> <Leader>b :<C-u>Unite -buffer-name=buffer  buffer<cr>
"nnoremap <silent> <Leader>t :<C-u>Unite -buffer-name=tag tag<cr>

" unite session command abbreviation
cnoreab uss UniteSessionSave
cnoreab usl UniteSessionLoad

" mru
autocmd VimLeave * :NeoMRUSave

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

" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor

" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0

" Set following to show "<CAPS>" in the status line when "Caps Lock" is on.
let b:keymap_name = "CAPS"

let g:airline_solarized_bg='dark'

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

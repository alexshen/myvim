set nocompatible
set t_ut=
filetype off

set rtp+=~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-projectroot

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite-help'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/unite-session'
Plugin 'Shougo/neoyank.vim'
Plugin 'tsukkee/unite-tag'
Plugin 't9md/vim-choosewin'
Plugin 'Tagbar'
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'ap/vim-buftabline'
Plugin 'easymotion/vim-easymotion'

" snip mate plugin and dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'cscope_macros.vim'
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'flazz/vim-colorschemes'
Plugin 'dbakker/vim-projectroot'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'a.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'elzr/vim-json'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'
"Plugin 'vim-ctrlspace/vim-ctrlspace.git'
Plugin 'fatih/vim-go.git'
Plugin 'SirVer/ultisnips'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tikhomirov/vim-glsl.git'
Plugin 'rhysd/vim-clang-format'
"Plugin 'mbbill/undotree'

call vundle#end()
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

if has('gui_win32')
    " au GUIEnter * simalt ~x
    " full screen
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

    "set guifont=Consolas:h10
    set guifont=Source_Code_Pro:h9
elseif has('unix') || has('macunix')
    set ffs=unix
    if has('gui_gtk2')
        set guifont=Ubuntu\ Mono\ 10
    endif
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme solarized

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

filetype plugin on
filetype indent on

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
nnoremap <silent> <F2> :TagbarToggle<CR>
let g:NERDTreeWinPos = 'right'
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn)|obj$',
    \ 'file': '\v\.(exe|so|obj|swp|ii|user|suo)',
    \ }
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
if executable("ag")
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
endif


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

autocmd FileType c,cpp,objc,objcpp,cs,go,javascript,python,rust,typescript nnoremap <Space>gd :YcmCompleter GoToDefinition<CR>
autocmd FileType c,cpp,objc,objcpp,cs,go,python,rust nnoremap <Space>gD :YcmCompleter GoToDeclaration<CR>
autocmd FileType c,cpp,objc,objcpp nnoremap <Space>gi :YcmCompleter GoToInclude<CR>

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
imap <silent> <Leader>a ;A<CR>

let g:alternateExtensions_h = "cpp,cxx,cc,CC,c"
let g:alternateExtensions_H = "CPP,CXX,CC,C"

" airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
" This is slow, so disable it
let g:airline#extensions#tagbar#enabled = 0
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
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
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

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set ttimeoutlen=0 timeoutlen=1000

" map meta key
let c='a'
while c <= 'z'
    exec "set <M-".c.">=\<Esc>".c
    exec "nmap \<Esc>".c." <M-".c.">"
    exec "imap \<Esc>".c." <M-".c.">"
    let c = nr2char(1+char2nr(c))
endw

" show keystrokes in status line
set showcmd

" use i-beam cursor in insert mode, works in iTerm2 but not in Terminal
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

set tw=100
set splitbelow

" window management
nnoremap <silent> <Leader>wc :ChooseWin<CR>
nnoremap <silent> <Leader>w= <C-w>=

" distraction free reading
nnoremap <silent> <Leader>wC :Goyo<CR>


" Unite settings
" Like ctrlp.vim settings.
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 10,
\   'direction': 'botright',
\ })

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

nnoremap <silent> <Leader>f :<C-u>Unite -buffer-name=files   file_rec/async<cr>
"nnoremap <silent> <Leader>fp :<C-u>UniteWithProjectDir -buffer-name=files  file_rec/async<cr>
"nnoremap <silent> <Leader>fc :<C-u>UniteWithCurrentDir -buffer-name=files  file_rec/async<cr>
"nnoremap <silent> <Leader>fb :<C-u>UniteWithBufferDir -buffer-name=files   file_rec/async<cr>
nnoremap <silent> <Leader>r :<C-u>Unite -buffer-name=mru     file_mru<cr>
nnoremap <silent> <Leader>o :<C-u>Unite -buffer-name=outline outline<cr>
nnoremap <silent> <Leader>y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> <Leader>b :<C-u>Unite -buffer-name=buffer  buffer<cr>
nnoremap <silent> <Leader>H :<C-u>Unite -buffer-name=help    help<cr>
nnoremap <silent> <Leader>S :<C-u>Unite -buffer-name=session session<cr>
nnoremap <silent> <Leader>t :<C-u>Unite -buffer-name=tag tag<cr>

" unite session command abbreviation
cnoreab uss UniteSessionSave
cnoreab usl UniteSessionLoad

" mru
autocmd VimLeave * :NeoMRUSave

let g:buftabline_numbers = 2
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

augroup ClangFormatSettings
    autocmd!
    " map to <Leader>= in C++ code
    autocmd FileType c,cpp,objc nnoremap <buffer><Leader>= :<C-u>ClangFormat<CR>
    autocmd FileType c,cpp,objc vnoremap <buffer><Leader>= :ClangFormat<CR>
augroup END

" easymotion
let g:EasyMotion_smartcase = 1
map <Leader><Leader>/ <Plug>(easymotion-sn)
map <Leader><Leader>. <Plug>(easymotion-repeat)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)


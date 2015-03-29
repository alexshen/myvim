" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last changed by:
"   Shen Alex
"   01/18/2015 Sun 
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"         for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"       for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-projectroot

call vundle#begin()

"Plugin 'gmarik/Vundle.vim'

Plugin 'Align'
Plugin 'Tagbar'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'

if filereadable(projectroot#guess() . '/.clang_complete')
    Plugin 'Rip-Rip/clang_complete'
    if has('win32')
        let g:clang_library_path = glob('~') . '/.vim/bundle/ycm-win/python'
    end
else
    " do not load clang_complete
    let g:clang_complete_loaded = 0
    if has('win32')
        " local plugin
        Plugin 'ycm-win', {'pinned': 1}
    else
        Plugin 'Valloric/YouCompleteMe.git'
    endif
endif

Plugin 'ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'fholgado/minibufexpl.vim'

" snip mate plugin and dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'
Plugin 'taglist.vim'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'cscope_macros.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'flazz/vim-colorschemes'
Plugin 'dbakker/vim-projectroot'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'a.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
set modeline
" breaking for characters greater than 255, such as Chinese
set fo+=m

" cmd height 2
set ch=2

set mousehide       " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch
endif

" Check if a font is available
function! HasFontInstalled(font)
    if executable('fc-list') != 1
        return 0
    endif

    let l:fcList = system('fc-list')
    if match(l:fcList, '\<' . a:font . ':') != -1
        return 1
    endif

    return 0
endfunction

set langmenu=en_US
let $LANG='en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if has('gui_win32')
    " au GUIEnter * simalt ~x
    " full screen
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

    set guifont=Consolas:h10
elseif has('unix') || has('macunix')
    set ffs=unix
    if has('gui_gtk2')
        if HasFontInstalled('Ubuntu Mono')
            set guifont=Ubuntu\ Mono\ 10
        elseif HasFontInstalled('Consolas')
            set guifont=Consolas\ 11
        endif
    endif
endif

"if has('gui_running')
"    set lines=58 columns=150
"endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
colorscheme desertEx
"colorscheme mrdark
"set guifont=courier_new:h10
"set guifont=Lucida_Console:h10
"set guifont=Dina:h10
"set guifont=Bitstream_Vera_Serif:h10
"set guifont=Triskweline:h10
"set guifont=ProggyCleanSZ:h11

set noerrorbells visualbell t_vb=
set ignorecase smartcase
set smarttab
set encoding=utf-8
set backspace=indent,eol,start
set number
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

filetype plugin on
filetype indent on

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
" replace tab with whitespaces
nmap \t :retab<CR>
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
noremap ; :

autocmd FileType text syn match TextTag "\*[^* \t]\+\*"
autocmd FileType text syn match TextJump "|[^* \t]\+|"

hi def link TextTag String
hi def link TextJump Comment

" set the height of the output window 
let bexec_winheight = 5
map <F7> <ESC>:Bexec()<CR>

" project
" let g:proj_window_width = 45

" taglist
let Tlist_WinWidth = 56 
" show only the current file
let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1

" Force all shell scripts to be recognized as bash scripts
let g:is_bash = 1

" Minibuf
" Enable <c-tab>
noremap <C-TAB>   :MBEbf<CR>
noremap <C-S-TAB> :MBEbb<CR>
" Enable <c-h,j,k,l> to navigate among windows
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

" Tagbar
" make it appear on the left by default
let g:tagbar_left = 1
nnoremap <silent> <A-9> :TagbarToggle<CR>

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
noremap <silent> <leader>ff :CtrlP<CR>
noremap <silent> <leader>ss :CtrlPTag<CR>
noremap <silent> <leader>rr :CtrlPClearCache<CR>
" visual assist style map
noremap <silent> <A-S-o> :CtrlP<CR>
noremap <silent> <A-S-s> :CtrlPTag<CR>

" Ycm
let g:ycm_server_keep_logfiles = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_filetype_blacklist = { 'tex' : 1 }
"let g:ycm_filetype_specific_completion_to_disable = { 'tex' : 1 }
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion = '<S-Space>'

" SnipMate
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

nmap <C-N> <Plug>IMAP_JumpForward
vmap <C-N> <Plug>IMAP_JumpForward
imap <C-N> <Plug>IMAP_JumpForward

" Latex-Suite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -interaction=nonstopmode -shell-escape $*'
let g:Tex_ViewRule_pdf = 'mupdf'

" clang_complete
let g:clang_snippets = 1

" enhanced cpp highlight
let g:cpp_class_scope_highlight = 1
" let g:cpp_experimental_template_highlight = 1

" a.vim
nmap <silent> <A-o> :A<CR>
imap <silent> <A-o> :A<CR>

" airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
" This is slow, so disable it
let g:airline#extensions#tagbar#enabled = 0
" make sure airline is always visible
set laststatus=2

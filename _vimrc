" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last changed by:
" 	Shen Alex
" 	2012-1-25
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'Align'
Plugin 'Tagbar'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
if has('win32')
    " local plugin
    Plugin 'ycm-win', {'pinned': 1}
else
    Plugin 'Valloric/YouCompleteMe.git'
endif
Plugin 'ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'

call vundle#end()
filetype plugin indent on

set ch=1		" Make command line one line high

set mousehide		" Hide the mouse when typing text

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

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95

endif

" Check if a font is available
function HasFontInstalled(font)
    if executable('fc-list') != 1
        return 0
    endif

    let l:fcList = system('fc-list')
    if match(l:fcList, '\<' . a:font . ':') != -1
        return 1
    endif

    return 0
endfunction

" Set locale to C, see :lang
language C

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
colorscheme mydesert
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
set fileencodings=utf-8,utf-16,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
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
set completeopt=menuone,menu,longest

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
let Tlist_WinWidth = 45
" show only the current file
let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1

" Force all shell scripts to be recognized as bash scripts
let g:is_bash = 1

" Minibuf
" Enable <c-tab>
let g:miniBufExplMapCTabSwitchBufs = 1
" Enable <c-h,j,k,l> to navigate among windows
let g:miniBufExplMapWindowNavVim = 1 

" Tagbar
" make it appear on the left by default
let g:tagbar_left = 1
nnoremap <silent> <A-9> :TagbarToggle<CR>

" CtrlP
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_match_window = 'results:99'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
noremap <silent> <leader>ff :CtrlP<CR>
noremap <silent> <leader>ss :CtrlPTag<CR>

" Ycm
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'

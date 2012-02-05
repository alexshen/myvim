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

set ch=1		" Make command line two lines high

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

" Set locale to C, see :lang
language C

if has('win32')
    " au GUIEnter * simalt ~x
    " full screen
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

    set guifont=Consolas:h10
elseif has('unix') || has('macunix')
    set ffs=unix
endif

if has('gui_running')
    set lines=58 columns=150
endif

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

set ignorecase smartcase
set smarttab
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
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

" ominicpp
set completeopt=menuone,menu,longest
set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_NamespaceSearch     = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess          = 1 "show access in pop-up
let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
let OmniCpp_DefaultNamespaces=["std"] 
let OmniCpp_DefaultNamespaces=["std", "_GLIBCXX_STD"]
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1

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

" python syntax highlight
let python_highlight_numbers = 1
let python_highlight_builtins = 1
let python_highlight_exceptions = 1
let python_highlight_space_errors = 0

" project
let g:proj_window_width = 45

" taglist
let Tlist_WinWidth = 45
" show only the current file
" let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1

" Force all shell scripts to be recognized as bash scripts
let g:is_bash = 1

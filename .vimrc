set nocompatible
set t_ut=
filetype off

" vim-plug auto-install
if empty(glob('~/.vim/autoload/plug.vim')) && executable('curl')
    silent !curl -kfLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/bundle')

Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite-help'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimproc.vim'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dbakker/vim-projectroot'
Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/tagbar'
Plug 'rhysd/vim-clang-format'
Plug 'schickling/vim-bufonly'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 't9md/vim-choosewin'
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tsukkee/unite-tag'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'xolox/vim-misc'

call plug#end()

" airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tagbar#enabled = 0
let g:tagbar_left = 1
let g:airline_detect_iminsert = 1
let g:airline_solarized_bg='dark'

" super tab, user defined completion
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1

set cscopetag

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

" UltiSnips
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

" map meta key
let c='a'
while c <= 'z'
    exec "set <M-".c.">=\<Esc>".c
    exec "nmap \<Esc>".c." <M-".c.">"
    exec "imap \<Esc>".c." <M-".c.">"
    let c = nr2char(1+char2nr(c))
endw

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

" easymotion
let g:EasyMotion_smartcase = 1
map <Leader>s <Plug>(easymotion-s)
map <Leader>/ <Plug>(easymotion-sn)
map <Leader>. <Plug>(easymotion-repeat)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

" nerdtree
let g:NERDTreeWinPos = 'right'
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>

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

" vim-bufonly
nnoremap <silent> <Leader>B :BufOnly<CR>

" vim-autoformat
nnoremap <Leader>= :Autoformat<CR>
vnoremap <Leader>= :Autoformat<CR>
nnoremap <Leader>- :AutoformatLine<CR>
let g:formatdef_ormolu_haskell = '"ormolu --no-cabal"'
let g:formatters_haskell = ['ormolu_haskell']

" a.vim
nmap <silent> <Leader>a ;A<CR>
let g:alternateExtensions_h = "cpp,cxx,cc,CC,c"
let g:alternateExtensions_H = "CPP,CXX,CC,C"

" ── Shared settings (sourced from shared.vim) ──
source ~/.vim/shared.vim

" ── Vim backup/swap/undo directories ──
call mkdir($HOME . '/.vim/backup/', "p")
call mkdir($HOME . '/.vim/swap/', "p")
call mkdir($HOME . '/.vim/undo/', "p")

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

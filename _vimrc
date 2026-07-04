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

" ── Shared settings (sourced from shared.vim) ──
source ~/.vim/shared.vim

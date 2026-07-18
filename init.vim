set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:python3_host_prog=$PYTHON3_HOST_PROG
let mapleader = "\<Space>"

" ── Base options ──────────────────────────────────────────────────────

filetype plugin indent on
set hidden
set modeline
set fo+=mj
set ch=2
set mousehide
let c_comment_strings=1
set hlsearch
syntax on
set langmenu=en_US
let $LANG='en_US'

if has('unix') || has('macunix')
    set ffs=unix
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

au FileType haskell setlocal shiftwidth=2 tabstop=2

set noerrorbells visualbell t_vb=
set ignorecase smartcase
set smarttab
set encoding=utf-8
set backspace=indent,eol,start
set number
set relativenumber
set guioptions-=T
set incsearch
set ruler
set cindent cino+=g0,:0,l1,t0,(0
set mps+=<:>
set wak=no
set completeopt=longest,menuone
set tags+=./tags,tags;
set tw=79
set cc=80
set splitbelow
set laststatus=2
set showtabline=2
set ttimeoutlen=0 timeoutlen=1000
set showcmd
set sessionoptions+=localoptions

" use i-beam cursor in insert mode (iTerm2)
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

" ── Bootstrap lazy.nvim ──
lua << EOF
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
EOF

" ── lazy.nvim plugin specs ──
lua << EOF
require("lazy").setup({
  -- Treesitter: better syntax highlighting and parsing
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)

                if lang and vim.treesitter.language.add(lang) then
                    vim.treesitter.start(args.buf, lang)
                end
            end,
        })
    end,
  },

  -- Mason: LSP installer & manager
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
          handlers = {
            function(server_name)
              vim.lsp.enable(server_name)
            end,
          },
      })
    end,
  },
  "neovim/nvim-lspconfig",

  -- blink.cmp: completion engine (with LuaSnip)
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "L3MON4D3/LuaSnip", "rafamadriz/friendly-snippets" },
    opts = {
      snippets = { preset = "luasnip" },
      keymap = {
        preset = "default",
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        menu = { auto_show = true },
        documentation = { auto_show = true },
      },
    },
  },
  "rafamadriz/friendly-snippets",

  -- conform.nvim: code formatting
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<Leader>=",
        function()
          require("conform").format({ async = true })
        end,
        desc = "Format buffer",
      },
      {
        "<Leader>-",
        function()
          require("conform").format({ async = true, range = { start = 0, ["end"] = vim.api.nvim_buf_line_count(0) } })
        end,
        desc = "Format line (whole buffer)",
      },
    },
    opts = {
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        go = { "gofumpt", "goimports" },
        haskell = { "ormolu" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        lua = { "stylua" },
        swift = { "swiftformat" },
        ["*"] = { "lsp" },
      },
    },
  },
  -- LuaSnip: snippet engine
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    keys = {
      {
        "<C-]>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-forward" or ""
        end,
        expr = true,
        mode = { "i", "s" },
        desc = "Jump forward in snippet",
      },
      {
        "<C-\\>",
        function()
          return require("luasnip").jumpable(-1) and "<Plug>luasnip-jump-backward" or ""
        end,
        expr = true,
        mode = { "i", "s" },
        desc = "Jump backward in snippet",
      },
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  { "christoomey/vim-tmux-navigator", lazy = false },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        search = { enabled = true },
        char = { enabled = false },
      },
      jump = { autojump = true },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    },
  },
  "navarasu/onedark.nvim",
  "junegunn/goyo.vim",
  "junegunn/vim-easy-align",
  -- telescope.nvim: fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<Leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
      { "<Leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
      { "<Leader>fb", function() require("telescope.builtin").buffers() end, desc = "Buffers" },
      { "<Leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Help tags" },
      { "<Leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Recent files" },
      { "<Leader>fc", function() require("telescope.builtin").commands() end, desc = "Commands" },
      { "<Leader>fk", function() require("telescope.builtin").keymaps() end, desc = "Keymaps" },
      { "<Leader>fd", function() require("telescope.builtin").diagnostics() end, desc = "Diagnostics" },
      { "<Leader>fs", function() require("telescope.builtin").lsp_document_symbols() end, desc = "Document symbols" },
      { "<Leader>fS", function() require("telescope.builtin").lsp_workspace_symbols() end, desc = "Workspace symbols" },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules", ".git/", ".DS_Store",
          "dist/",
          "%.o$", "%.obj$", "%.class$", "%.swp$",
        },
      },
    },
  },
  "mbbill/undotree",
  -- aerial.nvim: symbol outline
  {
    "stevearc/aerial.nvim",
    lazy = false,
    opts = {
      backends = { "treesitter", "lsp", "markdown" },
      show_guides = true,
    },
    keys = {
      { "<Leader>tt", "<Cmd>AerialToggle<CR>", desc = "Toggle Aerial" },
    },
  },
  "rhysd/vim-clang-format",
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = { auto_restore = true, auto_save = true },
  },
  -- oil.nvim: file explorer as a buffer
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = true,
      columns = { "icon" },
      view_options = { show_hidden = true },
    },
    keys = {
      { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
    },
  },
  "t9md/vim-choosewin",
  "tpope/vim-fugitive",
  {
    "echasnovski/mini.surround",
    keys = { "gsa", "gsd", "gsr", "gsf", "gsF", "gsh", "gsn" },
    config = function()
      require("mini.surround").setup({
        mappings = {
          add = "gsa",
          delete = "gsd",
          find = "gsf",
          find_left = "gsF",
          highlight = "gsh",
          replace = "gsr",
          update_n_lines = "gsn",
        },
      })
    end,
  },
  {
    "vim-airline/vim-airline",
    lazy = false,
    init = function()
      -- Must be set before airline loads
      vim.g["airline#extensions#tabline#enabled"] = 1
      vim.g["airline#extensions#tabline#buffer_idx_mode"] = 1
      vim.g["airline#extensions#tabline#buffer_nr_show"] = 1
      vim.g["airline#extensions#tabline#exclude_preview"] = 1
      vim.g.airline_detect_iminsert = 1
      vim.g.airline_solarized_bg = 'dark'
    end,
  },
  { "vim-airline/vim-airline-themes", lazy = false },
  -- other.nvim: open alternative files
  {
    "rgroli/other.nvim",
    keys = {
      { "<Leader>a", "<Cmd>Other<CR>", desc = "Open alternative file" },
    },
    config = function()
      require("other-nvim").setup({
        showPicker = true,
      })
    end,
  },
})
EOF

" ── Mappings and plugin config ────────────────────────────────────────

" quick nohighlight
nnoremap <silent> \\ :nohlsearch<CR>
" save one keystroke for typing commands
noremap ; :
noremap : ;

" Y yanks to end of line (same as yy)
nnoremap Y yy

" Yank to system clipboard
nnoremap <leader>y :%y+<CR>
vnoremap <leader>y "+y

" Window navigation (via tmux-navigator)
noremap <silent> <C-J> :TmuxNavigateDown<CR>
noremap <silent> <C-K> :TmuxNavigateUp<CR>
noremap <silent> <C-H> :TmuxNavigateLeft<CR>
noremap <silent> <C-L> :TmuxNavigateRight<CR>

" Terminal: escape to normal mode
if has('terminal')
    tnoremap <Esc> <C-\><C-n>
endif

" jk → escape
inoremap jk <ESC>

" Delete key helpers
imap <C-BS> <C-W>
imap <C-DEL> <ESC>lcw

" Store relative line number jumps in the jumplist
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" ── Window management ──
nnoremap <silent> <Leader>ww :ChooseWin<CR>
nnoremap <silent> <Leader>w= <C-w>=
" Preview tag under cursor
nnoremap <silent> <Leader>tp <C-w>}

" Distraction-free reading
nnoremap <silent> <Leader>R :Goyo<CR>

" ── Undotree ──
let g:undotree_SplitWidth = 35
noremap <F4> :UndotreeToggle<CR>

if has("persistent_undo")
    set undofile
endif

function g:Undotree_CustomMap()
    nmap <buffer> J <plug>UndotreeGoNextState
    nmap <buffer> K <plug>UndotreeGoPreviousState
endfunc

" ── Airline tab navigation ──
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

" ── Easy align ──
vmap <CR> <Plug>(EasyAlign)

" ── Toggle functions ──
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


" ── Caps lock indicator ──
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor
autocmd InsertLeave * set iminsert=0
let b:keymap_name = "CAPS"

" ── Unmap default mappings that cause input delay ──
autocmd VimEnter * silent! iunmap <Leader>ihn
autocmd VimEnter * silent! iunmap <Leader>is
autocmd VimEnter * silent! iunmap <Leader>ih

" ── Neovim backup/swap/undo directories ──
let s:state = stdpath("state")
call mkdir(s:state . "/backup/", "p")
call mkdir(s:state . "/swap/", "p")
call mkdir(s:state . "/undo/", "p")

let &backupdir = s:state . "/backup/"
let &directory = s:state . "/swap/"
let &undodir = s:state . "/undo/"

" ── Neovim-specific LSP keymaps ──
lua << EOF
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("nvim-lsp-attach", { clear = true }),
  callback = function(ev)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = ev.buf, desc = "LSP: " .. desc })
    end
    map("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
    map("gr", vim.lsp.buf.references, "[G]oto [R]eferences")
    map("gi", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
    map("K", vim.lsp.buf.hover, "Hover Documentation")
    map("<Leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    map("<Leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
    map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
    map("[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
    map("<Leader>yd", vim.diagnostic.open_float, "Line Diagnostics")
  end,
})

-- Setup sourcekit-lsp for Swift
vim.lsp.enable("sourcekit")
EOF

if $VIM_COLORSCHEME != ''
    exec "colorscheme " . $VIM_COLORSCHEME
else
    colorscheme onedark
endif
if $VIM_GUIFONT != ''
    exec "set guifont=" . $VIM_GUIFONT
endif


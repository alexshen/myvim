set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:python3_host_prog=$PYTHON3_HOST_PROG

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
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local ok, ts = pcall(require, "nvim-treesitter.configs")
      if ok then
        ts.setup({
          ensure_installed = { "c", "cpp", "go", "haskell", "javascript",
                               "python", "rust", "lua", "vim", "typescript" },
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },
        })
      end
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
      local ok, m = pcall(require, "mason-lspconfig")
      if ok then
        m.setup({
          handlers = {
            function(server_name)
              local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
              if lspconfig_ok then
                lspconfig[server_name].setup({})
              end
            end,
          },
        })
      end
    end,
  },
  "neovim/nvim-lspconfig",

  -- blink.cmp: completion engine (replaces YCM + supertab)
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
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

  -- Shared Vim plugins (also available in Vim via vim-plug)
  "Chiel92/vim-autoformat",
  "SirVer/ultisnips",
  { "christoomey/vim-tmux-navigator", lazy = false },
  "dbakker/vim-projectroot",
  "easymotion/vim-easymotion",
  "elzr/vim-json",
  "fatih/vim-go",
  "honza/vim-snippets",
  "joshdick/onedark.vim",
  "junegunn/goyo.vim",
  "junegunn/vim-easy-align",
  "ctrlpvim/ctrlp.vim",
  "mbbill/undotree",
  "octol/vim-cpp-enhanced-highlight",
  "preservim/tagbar",
  "rhysd/vim-clang-format",
  "schickling/vim-bufonly",
  "scrooloose/nerdcommenter",
  "scrooloose/nerdtree",
  "t9md/vim-choosewin",
  "tpope/vim-fugitive",
  "tpope/vim-surround",
  {
    "vim-airline/vim-airline",
    lazy = false,
    init = function()
      -- Must be set before airline loads
      vim.g["airline#extensions#tabline#enabled"] = 1
      vim.g["airline#extensions#tabline#buffer_idx_mode"] = 1
      vim.g["airline#extensions#tabline#buffer_nr_show"] = 1
      vim.g["airline#extensions#tabline#exclude_preview"] = 1
      vim.g["airline#extensions#tagbar#enabled"] = 0
      vim.g.airline_detect_iminsert = 1
      vim.g.airline_solarized_bg = 'dark'
    end,
  },
  { "vim-airline/vim-airline-themes", lazy = false },
  "vim-scripts/a.vim",
})
EOF

" ── Source shared vim config (keymaps, options — vim-plug runs in _vimrc only) ──
source ~/.vim/shared.vim

" ── Neovim-specific LSP keymaps (replaces YCM GoTo* mappings) ──
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

-- Enable vim-go LSP features in Neovim (use gopls instead of vim-go's built-in)
vim.g.go_fmt_command = "gopls"
EOF

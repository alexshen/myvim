set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:python3_host_prog=$PYTHON3_HOST_PROG
let mapleader = "\<Space>"

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
      require("nvim-treesitter.config").setup({
          ensure_installed = { "c", "cpp", "go", "haskell", "javascript",
                               "python", "rust", "lua", "vim", "typescript",
                               "swift" },
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },
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
  -- conform.nvim: code formatting (replaces vim-autoformat)
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
  -- LuaSnip: snippet engine (replaces UltiSnips)
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    keys = {
      {
        "<C-l>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-forward" or ""
        end,
        expr = true,
        desc = "Jump forward in snippet",
      },
      {
        "<C-h>",
        function()
          return require("luasnip").jumpable(-1) and "<Plug>luasnip-jump-backward" or ""
        end,
        expr = true,
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
    keys = function()
      local flash = require("flash")
      return {
        { "s", mode = { "n", "x", "o" }, flash.jump, desc = "Flash" },
        { "S", mode = { "n", "x", "o" }, flash.treesitter, desc = "Flash Treesitter" },
        { "r", mode = "o", flash.remote, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, flash.treesitter_search, desc = "Treesitter Search" },
      }
    end,
  },
  "fatih/vim-go",
  "navarasu/onedark.nvim",
  "junegunn/goyo.vim",
  "junegunn/vim-easy-align",
  -- telescope.nvim: fuzzy finder (replaces ctrlp.vim)
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
      local builtin = require("telescope.builtin")
      return {
        { "<Leader>ff", builtin.find_files, desc = "Find files" },
        { "<Leader>fg", builtin.live_grep, desc = "Live grep" },
        { "<Leader>fb", builtin.buffers, desc = "Buffers" },
        { "<Leader>fh", builtin.help_tags, desc = "Help tags" },
        { "<Leader>fr", builtin.oldfiles, desc = "Recent files" },
        { "<Leader>fc", builtin.commands, desc = "Commands" },
        { "<Leader>fk", builtin.keymaps, desc = "Keymaps" },
        { "<Leader>fd", builtin.diagnostics, desc = "Diagnostics" },
        { "<Leader>fs", builtin.lsp_document_symbols, desc = "Document symbols" },
        { "<Leader>fS", builtin.lsp_workspace_symbols, desc = "Workspace symbols" },
      }
    end,
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
  -- aerial.nvim: symbol outline (replaces tagbar)
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
  -- oil.nvim: file explorer as a buffer (replaces NERDTree)
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
  -- other.nvim: open alternative files (replaces a.vim)
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

" ── Source shared vim config (keymaps, options — vim-plug runs in _vimrc only) ──
source ~/.vim/shared.vim

" ── Neovim backup/swap/undo directories ──
let s:state = stdpath("state")
call mkdir(s:state . "/backup/", "p")
call mkdir(s:state . "/swap/", "p")
call mkdir(s:state . "/undo/", "p")

let &backupdir = s:state . "/backup/"
let &directory = s:state . "/swap/"
let &undodir = s:state . "/undo/"

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

-- Setup sourcekit-lsp for Swift (already available from Xcode toolchain)
vim.lsp.enable("sourcekit")
EOF

return {
  -- main interface stuff
  {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    event = "UiEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require("config.plugins.settings.lualine"),
  },
  {
    "petertriho/nvim-scrollbar",
    lazy = true,
    event = "BufRead",
    opts = {},
  },
  -- For combined relative & absolute line numbers
  {
    "akho/numbers.vim",
    lazy = true,
    event = "BufRead",
    config = function()
      vim.g.numbers_exclude = {
        "unite",
        "tagbar",
        "startify",
        "gundo",
        "vimshell",
        "w3m",
        "lazy",
        "oil",
      }
      vim.g.numbers_exclude_buffers = {
        "acwrite",
        "help",
        "nofile",
        "nowrite",
        "quickfix",
        "terminal",
      }
    end,
  },
  -- Navigation
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    keys = {
      { "<leader>f" },
      {
        "<M-CR>",
        "<cmd>lua vim.lsp.buf.code_action()<CR>",
        mode = { "n", "i" },
        noremap = true,
        silent = true,
        desc = "Code action",
      },
    },
    config = function()
      require("config.plugins.settings.telescope")
    end,
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-ui-select.nvim" },
    },
  },
  {
    "stevearc/overseer.nvim",
    lazy = true,
    cmd = "OverseerRun",
    keys = {
      { "<leader>or", "<cmd>OverseerRun<CR>", mode = "n", noremap = true, silent = true, desc = "Open Overseer menu" },
      {
        "<leader>ot",
        "<cmd>OverseerToggle right<CR>",
        mode = "n",
        noremap = true,
        silent = true,
        desc = "Show Overseer reports",
      },
    },
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    opts = {},
  },
  -- filesystem stuff
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    keys = { "<leader>n" },
    config = function()
      require("config.plugins.settings.nvim-tree")
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "stevearc/oil.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = true,
    cmd = "Oil",
    keys = {
      { "<leader>ol", "<cmd>Oil --float<CR>", mode = "n", noremap = true, silent = true, desc = "Floating Oil" },
    },
    opts = require("config.plugins.settings.oil"),
  },
  -- git stuff
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = "G",
  },
  -- Better git history
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },
  -- Extra git info
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = "BufRead",
    config = function()
      require("gitsigns").setup({
        signcolumn = true,
        current_line_blame = true,
        numhl = true,
      })
      require("scrollbar.handlers.gitsigns").setup()
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = true,
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  },
  -- search stuff
  -- Gives more info when searching
  {
    "kevinhwang91/nvim-hlslens",
    lazy = true,
    event = "BufRead",
    config = function()
      -- require('hlslens').setup() is not required
      require("scrollbar.handlers.search").setup({
        -- hlslens config overrides
      })
    end,
  },
  -- Removes search highlights once done
  {
    "nvimdev/hlsearch.nvim",
    lazy = true,
    event = "BufRead",
    opts = {},
  },
  -- misc
  {
    "m4xshen/hardtime.nvim",
    lazy = true,
    event = "BufRead",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      disabled_filetypes = {
        "qf",
        "netrw",
        "nvim-tree",
        "lazy",
        "oil",
        "mason",
        "fugitive",
        "help",
        "git",
        "undotree",
        "trouble",
      },
    },
  },
}

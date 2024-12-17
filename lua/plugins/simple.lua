return {
  { "tpope/vim-fugitive" },
  --   {
  --     "stevearc/aerial.nvim",
  --     opts = {},
  --     -- Optional dependencies
  --     dependencies = {
  --       "nvim-treesitter/nvim-treesitter",
  --       "nvim-tree/nvim-web-devicons",
  --     },
  --   },
  {
    "weirongxu/plantuml-previewer.vim",
    dependencies = {
      "tyru/open-browser.vim",
      "aklt/plantuml-syntax",
    },
  },
  { "vifm/vifm.vim" },
  {
    "nvim-pack/nvim-spectre",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("spectre").setup({})
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  --   { "xiyaowong/transparent.nvim" },
  --   {
  --     "tetzng/random-colorscheme.nvim",
  --     lazy = false,
  --     opts = {
  --       -- colorschemes = {}, -- default: all available colors
  --       set_on_load = false, -- default: true
  --     },
  --     keys = {
  --       {
  --         "<leader>cc",
  --         function() require("random-colorscheme").set() end,
  --         desc = "Set Random Colorscheme",
  --       },
  --     },
  --   },
  { "s1n7ax/nvim-window-picker" },
  {
    "vim-test/vim-test",
    config = function()
      vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
      vim.keymap.set("n", "<leader>tf", ":TestFile<CR>")
      vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>")
      vim.keymap.set("n", "<leader>tl", ":TestLast<CR>")
      vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>")
    end,
  },
}

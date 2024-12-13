return {
  "frankroeder/parrot.nvim",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  opts = {
    provider = "ollama",
  },
  config = function()
    require("parrot").setup({
      providers = {
        ollama = {},
      },
    })
  end,
}

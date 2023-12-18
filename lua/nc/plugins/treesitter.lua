return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufReadPost",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
    },
  },
  config = function()
    local treesitter = require("nvim-treesitter")
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua",
        "c",
        "cpp",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "css",
        "html",
        "markdown",
        "markdown_inline",
        "latex",
      },
      ignore_install = { "" },
      sync_install = false,

      highlight = {
        enable = true,
      },

      autopairs = {
        enable = true,
      },

      autotag = {
        enable = true,
      },

      indent = { enable = true },
    })
  end,
}

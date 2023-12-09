return {
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true, opts = {} },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    init = function()
      require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })
    end,
  },
}

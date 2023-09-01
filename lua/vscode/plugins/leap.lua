return {
  "https://github.com/ggandor/leap.nvim",
  dependencies = {
    "https://github.com/tpope/vim-repeat",
  },
  init = function()
    require("leap").add_default_mappings()
  end,
}

return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "e",
      "<cmd>lua require('spider').motion('e')<CR>",
      mode = { "n", "o", "x" },
    },
  },
}

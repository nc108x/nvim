return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { { "catppuccin/nvim", name = "catppuccin" } },
    event = "VeryLazy",
    opts = {
      options = {
        theme = "catppuccin",
        globalstatus = true,
        disabled_filetypes = { statusline = { "alpha", "NvimTree" } },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = {
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
        },
        lualine_y = { "filetype" },
        lualine_z = { "progress", "location" },
      },
    },
  },
}

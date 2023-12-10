return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
  lazy = true,
  cmd = "Telescope",
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        prompt_prefix = "  ",
        selection_caret = "  ",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules" },
        mappings = {
          i = {
            ["<Down>"] = actions.move_selection_next,
            ["<Up>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-u>"] = false,
          },
        },
      },

      pickers = {
        find_files = {
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
      },

      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            width = 0.8,
            previewer = false,
            prompt_title = false,
            borderchars = {
              { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
              prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
              results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
              preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            },
          }),
        },
      },
    }
  end,

  init = function()
    require("telescope").load_extension("ui-select")
  end,
}

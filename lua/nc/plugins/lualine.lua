return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      { "catppuccin/nvim", name = "catppuccin" },
      { "Civitasv/cmake-tools.nvim" },
    },
    event = "VeryLazy",

    opts = function()
      local cmake = require("cmake-tools")

      M = {
        options = {
          theme = "catppuccin",
          globalstatus = true,
          disabled_filetypes = { statusline = { "alpha", "NvimTree" } },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "filename" },
          lualine_c = {},
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
      }

      local function ins_left(component)
        table.insert(M.sections.lualine_c, component)
      end

      local function ins_right(component)
        table.insert(M.sections.lualine_x, component)
      end

      -- CMake stuff
      ins_left({
        function()
          local type = cmake.get_build_type()
          return "[" .. (type and type or "") .. "]"
        end,
        icon = " ",
        cond = function()
          return cmake.is_cmake_project() and not cmake.has_cmake_preset()
        end,
        on_click = function(n, mouse)
          if n == 1 then
            if mouse == "l" then
              vim.cmd("CMakeSelectBuildType")
            end
          end
        end,
      })

      -- Kit scanning doesn't work properly yet
      -- ins_left({
      --   function()
      --     local kit = cmake.get_kit()
      --     return "[" .. (kit and kit or "X") .. "]"
      --   end,
      --   cond = function()
      --     return cmake.is_cmake_project() and not cmake.has_cmake_preset()
      --   end,
      --   on_click = function(n, mouse)
      --     if n == 1 then
      --       if mouse == "l" then
      --         vim.cmd("CMakeSelectKit")
      --       end
      --     end
      --   end,
      -- })

      ins_left({
        function()
          return "Build"
        end,
        icon = " ",
        cond = cmake.is_cmake_project,
        on_click = function(n, mouse)
          if n == 1 then
            if mouse == "l" then
              vim.cmd("CMakeBuild")
            end
          end
        end,
      })

      ins_left({
        function()
          local b_target = cmake.get_build_target()
          return "[" .. (b_target and b_target or "X") .. "]"
        end,
        cond = cmake.is_cmake_project,
        on_click = function(n, mouse)
          if n == 1 then
            if mouse == "l" then
              vim.cmd("CMakeSelectBuildTarget")
            end
          end
        end,
      })

      return M
    end,
  },
}

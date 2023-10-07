return {
  "williamboman/mason-lspconfig.nvim",
  config = {
    ensure_installed = require("nc.plugins.lsp.options.servers").servers,
    automatic_installation = true,
  },
  dependencies = {
    {

      "williamboman/mason.nvim",
      build = ":MasonUpdate", -- :MasonUpdate updates registry contents
      lazy = false,
      config = {
        ui = {
          border = "none",
          icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
          },
        },
        log_level = vim.log.levels.INFO,
        max_concurrent_installers = 4,
      },
    },
  },
}

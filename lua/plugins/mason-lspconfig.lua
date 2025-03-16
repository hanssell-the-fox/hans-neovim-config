return {
  "williamboman/mason-lspconfig.nvim",
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "bashls",
      "jsonls",
      "cssls",
      "html",
      "lua_ls",
      "emmet_ls",
    },

    automatic_installation = true,
  },
}

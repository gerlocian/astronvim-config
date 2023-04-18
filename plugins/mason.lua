-- Mason handles external editor tooling including language servers, linters, formatters, debuggers, etc.

-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    -- Handles language servers such as code completion and language diagnostics.
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "lua_ls" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    -- Similar to LSP Config, except it's meant for tools that don't have a language server.
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "stylua" },
    },
  },
  {
    -- Debuggers
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}

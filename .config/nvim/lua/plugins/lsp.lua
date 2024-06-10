return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lsp = require("lspconfig")
         lsp.tsserver.setup({})
         lsp.html.setup({})
         lsp.cssls.setup({})
         lsp.lua_ls.setup({})
      end,
   },
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup({})
         -- vim.cmd("MasonInstall prettier")
         -- vim.cmd("MasonInstall stylua")
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "tsserver", "html", "cssls", "eslint", "lua_ls" },
         })
      end,
   },
}
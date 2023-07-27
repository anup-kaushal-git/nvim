require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "quick_lint_js", "vtsls", "html", "cssls" },
}


local on_attach = function(_, _)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
      on_attach = on_attach,
      capabilities = capabilities
}
require("lspconfig").html.setup  {
      on_attach = on_attach,
      capabilities = capabilities
}
require("lspconfig").quick_lint_js.setup  {
      on_attach = on_attach,
      capabilities = capabilities
}
require("lspconfig").vtsls.setup  {
      on_attach = on_attach,
      capabilities = capabilities
}
require("lspconfig").cssls.setup  {
      on_attach = on_attach,
      capabilities = capabilities
}




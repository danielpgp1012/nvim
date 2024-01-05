-- dear local lsp_zero = require('lsp-zero')
local lsp_zero = require('lsp-zero').preset({manage_nvim_cmp = false})
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'pyright','angularls','lua_ls','vimls','html'},
  handlers = {
    lsp_zero.default_setup,
  }
})

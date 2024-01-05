local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
  },
  mapping = cmp.mapping.preset.insert({
    -- confirm completion
    ['<Tab>'] = cmp.mapping.confirm({select = true}),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,
})

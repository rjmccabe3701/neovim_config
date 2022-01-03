--From 
-- https://github.com/hrsh7th/nvim-cmp

--set completeopt=menu,menuone,noselect
--vim.api.nvim_command('set completeopt=menu,menuone,noselect')
vim.o.completeopt='menu,menuone,noselect'

local cmp = require'cmp'
-- Global setup.
cmp.setup({
   snippet = {
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
         -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
   },
   mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-e>'] = cmp.mapping({
         i = cmp.mapping.abort(),
         c = cmp.mapping.close(),
      }),
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
   },
   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'path' },
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'snippy' }, -- For snippy users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
   }, {
      { name = 'buffer', keyword_length = 5 },
   })
})
-- `/` cmdline setup.
cmp.setup.cmdline('/', {
   sources = {
      { name = 'buffer' }
   }
})
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
   sources = cmp.config.sources({
      { name = 'path' }
   }, {
      { name = 'cmdline', keyword_length = 5 }
   })
})
-- Setup lspconfig.
--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--require('lspconfig')[%YOUR_LSP_SERVER%].setup {
--capabilities = capabilities
--}


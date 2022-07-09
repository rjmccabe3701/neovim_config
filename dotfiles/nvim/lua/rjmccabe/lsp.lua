local lspconfig = require 'lspconfig'

lspconfig.pyright.setup{
   settings = {
      python = {
         analysis = {
            typeCheckingMode="off"
         }
         -- reportUnknownVariableType=false,
      }
   }
}

vim.cmd [[
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
"autocmd BufWritePre *.go lua goimports(1000)
]]

require("rjmccabe.plugins")
require("rjmccabe.config_common")
require("rjmccabe.telescope.setup")
require("rjmccabe.telescope.mappings")
require("rjmccabe.completion")
require("rjmccabe.lsp")
-- require("rjmccabe.tree")
require('Comment').setup()


P = function(v)
  print(vim.inspect(v))
  return v
end


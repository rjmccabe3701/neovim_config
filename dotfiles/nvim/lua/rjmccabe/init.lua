require("rjmccabe.plugins")
require("rjmccabe.config_common")
require("rjmccabe.telescope.setup")
require("rjmccabe.telescope.mappings")
--
P = function(v)
  print(vim.inspect(v))
  return v
end

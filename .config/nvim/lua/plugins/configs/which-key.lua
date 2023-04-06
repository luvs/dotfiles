local wk = require('which-key')

wk.setup({
  icons = {
    breadcrumb = ">",
    separator = "->",
    group = "+",
  },
  key_labels = {
    ["<leader>"] = "SPC",
  },
  window = {
    border = "single",
  },
})

require('nvim-autopairs').setup({
  ignored_next_char = string.gsub([[ [%w%%%[%.] ]],"%s+", "")
})

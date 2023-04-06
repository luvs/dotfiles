local present, indent = pcall(require, "indent_blankline")

if not present then
  return
end

indent.setup {
  indentLine_enabled = 1,
  char = "",
  filetype_exclude = {
      "help",
      "terminal",
      "dashboard",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
}

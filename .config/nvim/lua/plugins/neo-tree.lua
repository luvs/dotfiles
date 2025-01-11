local Util = require("lazyvim.util")

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
      { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (root dir)", remap = true },
    },
  },
}

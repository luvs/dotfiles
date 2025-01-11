return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (root dir)" },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    }
  }
}

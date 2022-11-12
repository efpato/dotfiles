vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "i", action = "split" },
        { key = "s", action = "vsplit" },
        { key = "t", action = "tabnew" },
        { key = "?", action = "toggle_help" },
      },
    },
  },
})

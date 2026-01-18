vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>f", FzfLua.files)

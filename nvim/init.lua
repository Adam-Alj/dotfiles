vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("colorscheme theme")

vim.opt.clipboard = "unnamed"

vim.keymap.set("i", "jk", "<Esc>")

require("config.lazy")



local colors = {
	dull_black = "#3a3d4b",
	light_black = "#696d77",
	red = "#ff657a",
	green = "#bad761",
	yellow = "#ffd76d",
	orange = "#ff9b5e",
	magenta = "#c39ac9",
	cyan = "#9cd1bb",
	white = "#eaf2f1"
}

local x = 5;

vim.o.termguicolors = true
vim.g.colors_name = "whatever"


vim.api.nvim_set_hl(0, "Normal", {bg = colors.dull_black, fg = colors.white})
vim.api.nvim_set_hl(0, "Constant", {fg = colors.orange})
vim.api.nvim_set_hl(0, "@keyword", {fg = colors.red})
vim.api.nvim_set_hl(0, "@function", {fg = colors.yellow})

--[[
background #3a3d4b
foreground #eaf2f1

cursor #eaf2f1
cursor_text_color #000000
selection_foreground #3a3d4b
selection_background #eaf2f1


# yellow
color3 #ffd76d
# light yellow
color11 #ffd76d

# orange 
color4 #ff9b5e
# orange 
color12 #ff9b5e

# magenta
color5 #c39ac9
# light magenta
color13 #c39ac9

# cyan
color6 #9cd1bb
# light cyan
color14 #9cd1bb

# dull white
color7 #eaf2f1
# bright white
color15 #eaf2f1
]]

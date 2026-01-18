local colors = {
    dull_black = "#3a3d4b",
    light_black = "#696d77",
    red        = "#ff657a",
    green      = "#bad761",
    sage_green = "#769984",
    yellow     = "#ffd76d",
    orange     = "#ff9b5e",
    magenta    = "#c39ac9",
    cyan       = "#9cd1bb",
    white      = "#eaf2f1",
    blue       = "#8caaee" ,
    mist       = "#C3D3E0"
}

vim.o.termguicolors = true
vim.g.colors_name = "minimalist_pastel"

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal",     { bg = colors.dull_black, fg = colors.white })
hl("LineNr",     { fg = colors.light_black })
hl("CursorLine", { bg = "#404455" })
hl("Visual",     { bg = "#4e5264" })

hl("Comment", { fg = colors.sage_green, italic = true })
hl("String",  { fg = colors.green })
hl("Number",  { fg = colors.orange })
hl("Boolean", { fg = colors.orange, bold = true })


-- Keywords (magenta) 
hl("Statement", { fg = colors.magenta })
hl("@keyword",  { fg = colors.magenta })
hl("@repeat",   { fg = colors.magenta })
hl("@conditional", { fg = colors.magenta })

-- Types (blue)
hl("Type", { fg = colors.blue }) 
hl("@type", { fg = colors.blue })
hl("@type.builtin", { fg = colors.blue })
hl("@constructor", { fg = colors.blue })

-- Functions (yellow)
hl("Function", { fg = colors.yellow })
hl("@function", { fg = colors.yellow })
hl("@method", { fg = colors.yellow })

-- Constants (orange)
hl("Constant", { fg = colors.orange })
hl("@constant", { fg = colors.orange })
hl("@constant.builtin", { fg = colors.orange })

-- Identifiers (white)
hl("Identifier", { fg = colors.white })
hl("@variable", { fg = colors.white })
hl("@variable.builtin", { fg = colors.red })

-- Operators/Delimiters 
hl("Operator", { fg = colors.cyan })
hl("@operator", { fg = colors.cyan })
hl("Delimiter", { fg = colors.light_black })
hl("@punctuation", { fg = colors.mist})

hl("Special", { fg = colors.cyan })
hl("Error", { fg = colors.red, bold = true })
hl("Todo", { bg = colors.yellow, fg = colors.dull_black, bold = true })

hl("DiagnosticUnnecessary", { underline = true, sp = colors.sage_green})

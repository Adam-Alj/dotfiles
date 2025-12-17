local TreeSitter = {}

local languages = {
 "vimdoc", 
 "rust",
 "c", 
 "lua", 
 "markdown", 
 "markdown_inline",
 "javascript", 
 "typescript", 
 "gleam"
}

TreeSitter.config = {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'master', 
	lazy = false, 
	build = ":TSUpdate"
}

function TreeSitter:postRegister()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = languages,
		highlight = {
			enable = true,
		}
	}
	return
end

return TreeSitter




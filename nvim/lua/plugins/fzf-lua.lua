local FZFLua = {}

FZFLua.config = {
  "ibhagwan/fzf-lua",
}

function FZFLua:postRegister()
	require'fzf-lua'.setup()
	return
end

return FZFLua

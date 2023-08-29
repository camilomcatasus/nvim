require 'nvim-treesitter.install'.compilers = { "gcc" }

require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"json",
		"python",
		"toml", 
		"sql", 
		"javascript", 
		"typescript", 
		"cpp", 
		"c_sharp", 
		"css", 
		"html", 
		"rust", 
		"c", 
		"lua", 
		"vim", 
		"vimdoc", 
		"query" 
	},

	sync_isntall = false,
	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}

local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false



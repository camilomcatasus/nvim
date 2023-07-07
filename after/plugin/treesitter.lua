require 'nvim-treesitter.install'.compilers = { "gcc" }

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "typescript", "cpp", "c_sharp", "css", "html", "rust", "c", "lua", "vim", "vimdoc", "query" },

	sync_isntall = false,
	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}

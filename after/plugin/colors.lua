function select_theme()
	local theme_message = [[
Select a theme:
1: tokyonight
2: boo
3: moonfly
4: neon
5: rosepine]]
	print(theme_message)
	local input = vim.fn.input("Theme number? ")

	if input ~= '4' then
		require('lualine').setup()
	end

	if input == "1" then
		vim.cmd[[colorscheme tokyonight-night]]
	elseif input == "2" then
		require("boo-colorscheme").use({
			italic = true,
			theme = "boo"
		})
	elseif input == "3" then
		vim.cmd[[colorscheme moonfly]]
	elseif input == "4" then
		vim.g.neon_style = "dark"
		vim.cmd[[colorscheme neon]]

		require('lualine').setup {
			options = {
				theme = 'neon'
			}
		}

	elseif input == "5" then
		vim.cmd[[colorscheme rose-pine]]
	end
end



require 'colorizer'.attach_to_buffer(0, {
	filetypes = {
		"css",
		"javascript",
		"html"
		
	},
	user_default_options = {
		css = true,
		tailwind = true,
		always_update = true,
	},
})
require('lualine').setup()
vim.cmd[[colorscheme tokyonight-night]]

vim.api.nvim_set_keymap('n', "<leader>c", '<cmd>lua select_theme()<CR>', {noremap = true, silent = true})
vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.scrolloff = 8;
vim.opt.expandtab = true;
vim.opt.smartindent = true;

vim.opt.hlsearch = false;
vim.opt.incsearch = true;

vim.opt.signcolumn = "yes";


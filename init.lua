-- general remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)

-- file tree stuff
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require('nvim-web-devicons').setup()
require("nvim-tree").setup({
    log = {
        enable = true,
        types = {
            watcher = true
        }
    },
    filesystem_watchers = {
        ignore_dirs = {".target"}
    }
})


require("cambucha")
vim.o.shiftwidth = 3
vim.o.tabstop = 3
vim.opt.relativenumber = true



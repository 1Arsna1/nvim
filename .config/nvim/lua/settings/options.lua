vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set autoindent smartindent")
vim.cmd("set termguicolors")
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.conceallevel = 1

vim.filetype.add({
	extension = {
		rasi = "rasi",
	},
})

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

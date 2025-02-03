-- mason-config.lua
local defaults = {
	lsp = { "lua_ls" },
	lint = { "selene" },
	conform = { "stylua" },
	dap = {},
}
local config = vim.tbl_deep_extend("force", defaults, {
	lsp = { "lua_ls", "biome", "bashls", "cssls" }, -- LSP servers
	lint = { "selene", "shellharden", "biome", "stylelint" }, -- Linters/formatters
	dap = {}, -- Debug adapters
	conform = { "stylua", "biome", "shellharden", "prettierd" }, -- Formatters for conform.nvim
})

return config

local mason_config = require("settings.tools.mason-config") -- Load the centralized config

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("settings.tools.mason")
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = mason_config.lsp, -- Use the LSP config from the centralized file
				automatic_installation = true,
			})
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-lint" },
		config = function()
			require("mason-nvim-lint").setup({
				ensure_installed = mason_config.lint, -- Use the lint config from the centralized file
				automatic_installation = true,
			})
		end,
	},
	{
		"zapling/mason-conform.nvim",
		dependencies = { "williamboman/mason.nvim", "stevearc/conform.nvim" },
		config = function()
			require("mason-conform").setup({
				ensure_installed = mason_config.conform, -- Use the conform config from the centralized file
				automatic_installation = true,
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
		config = function()
			require("mason-nvim-dap").setup({
				ensure_installed = mason_config.dap, -- Use the DAP config from the centralized file
				automatic_installation = true,
			})
		end,
	},
}

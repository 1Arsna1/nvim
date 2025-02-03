-- tools-config.lua
local config = {
	treesitter = {
		"lua",
		"javascript",
		"bash",
		"fish",
		"css",
	},
	lint = {
		linters_by_ft = {
			lua = { "selene" }, -- Example linter for Lua
			-- javascript = { "biomejs" },
			-- jsonc = { "biomejs" },
			bash = { "shellharden" },
			css = { "stylelint" },
		},
	},
	conform = {
		formatters_by_ft = {
			lua = { "stylua" }, -- Example formatter for Lua
			javascript = { "biome" },
			jsonc = { "biome" },
			bash = { "shellharden" },
			css = { "prettierd" },
		},
	},
}

return config

-- tools-config.lua
local config = {
	treesitter = {
		"lua",
		"javascript",
		"bash",
		"fish",
		"css",
		"gdscript",
	},
	lint = {
		linters_by_ft = {
			lua = { "selene" }, -- Example linter for Lua
			-- javascript = { "biomejs" },
			-- jsonc = { "biomejs" },
			bash = { "shellharden" },
			css = { "stylelint" },
			gdscript = { "gdlint" },
		},
	},
	conform = {
		formatters_by_ft = {
			lua = { "stylua" }, -- Example formatter for Lua
			javascript = { "biome" },
			jsonc = { "biome" },
			bash = { "shellharden" },
			css = { "prettierd" },
			gdscript = { "gdformat" },
		},
	},
}

return config

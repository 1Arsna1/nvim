local mapping = require("settings.telescope.mappings")
local extensions = require("settings.telescope.extensions")
local telescope = require("telescope")
telescope.setup({
	defaults = {
		mappings = mapping.mappings,
	},
	extensions = extensions.extensions,
})
--telescope.load_extension("neoclip")
--telescope.load_extension("notify")
--telescope.load_extension("noice")
telescope.load_extension("fzf")
telescope.load_extension("ui-select")

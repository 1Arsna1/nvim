return {
	"folke/which-key.nvim",
	dependencies = { "echasnovski/mini.icons", "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		require("settings.which-keys.keys")
		require("settings.which-keys.binds")
	end,
}

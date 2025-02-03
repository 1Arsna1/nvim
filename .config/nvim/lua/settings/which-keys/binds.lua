local wk = require("which-key")

wk.add({
	{
		"<leader>?",
		function()
			wk.show({ global = true })
		end,
		desc = "Show Keybinds",
	},
	{
		"<leader>w",
		function()
			wk.show({ loop = true })
		end,
		desc = "Hydra Mode",
	},
	{ "<C-b>", "<ESC>^i", desc = "move beginning of line", mode = "i" },
	{ "<C-e>", "<End>", desc = "move end of line", mode = "i" },
	{ "<C-h>", "<Left>", desc = "move left", mode = "i" },
	{ "<C-l>", "<Right>", desc = "move right", mode = "i" },
	{ "<C-j>", "<Down>", desc = "move down", mode = "i" },
	{ "<C-k>", "<Up>", desc = "move up", mode = "i" },

	{ "<C-h>", "<C-w>h", desc = "switch window left", mode = "n" },
	{ "<C-l>", "<C-w>l", desc = "switch window right", mode = "n" },
	{ "<C-j>", "<C-w>j", desc = "switch window down", mode = "n" },
	{ "<C-k>", "<C-w>k", desc = "switch window up", mode = "n" },

	{ "<Esc>", "<cmd>noh<CR>", desc = "general clear highlights", mode = "n" },

	{ "<C-s>", "<cmd>w<CR>", desc = "general save file", mode = "n" },
	{ "<C-c>", "<cmd>%y+<CR>", desc = "general copy whole file", mode = "n" },

	{ "<C-q>", "<cmd>quit<CR>", desc = "Quit", mode = "n" },
	{ "<C-qa>", "<cmd>quitall<CR>", desc = "Quit all", mode = "n" },
	{ "<C-qf>", "<cmd>quit!<CR>", desc = "Force Quit", mode = "n" },
	{ "<C-qaf>", "<cmd>quitall!<CR>", desc = "Force Quit all", mode = "n" },
	{ "<C-w>", "<cmd>write<CR>", desc = "Write", mode = "n" },

	{ "<leader>nt", "<cmd>set nu!<CR>", desc = "toggle line number", mode = "n" },
	{ "<leader>rnt", "<cmd>set rnu!<CR>", desc = "toggle relative number", mode = "n" },

	-- tools
	{ "<leader>mz", "<cmd>Lazy<cr>", desc = "Plugin Manager", mode = "n" },
	{ "<leader>mm", "<cmd>Mason<cr>", desc = "Tool Manager", mode = "n" },
	{ "<leader>mn", "<cmd>LazyDoToggle<cr>", desc = "Lazydo", mode = "n" },

	-- comment
	{ "<leader>/", "gcc", desc = "Toggle comment", mode = "n", remap = true },
	{ "<leader>/", "gcc", desc = "Toggle comment", mode = "v", remap = true },

	-- gamify
	{ "<leader>g", group = "Gamify" },
	{ "<leader>gg", "<cmd>Gamify<cr>", desc = "Gamify", mode = "n" },
	{ "<leader>g", "<cmd>Achievements<cr>", desc = "Achievements", mode = "n" },
	{ "<leader>gl", "<cmd>LangStats<cr>", desc = "Language Stats", mode = "n" },

	-- terminal
	{ "<leader>o", group = "Terminal" },
	{ "<leader>of", "<cmd>ToggleTerm direction=float<cr>", desc = "Floating Terminal", mode = "n" },
	{ "<leader>oh", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal", mode = "n" },
	{ "<leader>ov", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal", mode = "n" },
	{ "<leader>ot", "<cmd>ToggleTerm direction=tab<cr>", desc = "Tab Terminal", mode = "n" },

	-- file tree
	{ "<leader>x", group = "Files" },
	{ "<leader>xt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Files", mode = "n" },
	{ "<leader>xo", "<cmd>NvimTreeOpen<cr>", desc = "Open Files", mode = "n" },
	{ "<leader>xc", "<cmd>NvimTreeClose<cr>", desc = "Close Files", mode = "n" },
	{ "<leader>xf", "<cmd>NvimTreeFocus<cr>", desc = "Focus Files", mode = "n" },

	-- telescope
	{ "<leder>f", group = "Telescope" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	{
		"<leader>fa",
		"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
		desc = "Find all Files",
		mode = "n",
	},
	{ "<leader>fr", "<cmd>Telescope grep_string<cr>", desc = "Grep Text", mode = "n" },
	{ "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Tab", mode = "n" },
	{ "<leader>fc", "<cmd>Telescope neoclip<cr>", desc = "Clipboard", mode = "n" },
	{ "<leader>fx", "<cmd>Telescope file_browser<cr>", desc = "Telescope Files", mode = "n" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
	{ "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Marks", mode = "n" },
	{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Oldfiles", mode = "n" },
	{ "<leader>fgc", "<cmd>Telescope git_commits<cr>", desc = "Git commits", mode = "n" },
	{ "<leader>fgs", "<cmd>Telescope git_status<cr>", desc = "Git status", mode = "n" },
	{ "<leader>fn", "<cmd>Telescope noice<cr>", desc = "Noice", mode = "n" },
	{ "<leader>fv", "<cmd>Telescope vim_options<cr>", desc = "Vim options", mode = "n" },
	{ "<leader>fd", "<cmd>Telescope fd<cr>", desc = "FD", mode = "n" },

	-- lsp
	{ "<leader>l", group = "LSP" },
	{ "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover Info", mode = "n" },
	{ "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Definiton", mode = "n" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action", mode = "n" },
	{ "<leader>ls", "<cmd>lua vim.diagnostic.setloclist<cr>", desc = "LSP loclist", mode = "n" },

	-- dap
	{ "<leader>d", group = "Dap" },
	{ "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Breakpoint Start", mode = "n" },
	{ "<leader>dc", "<cmd>DapContinue<cr>", desc = "Breakpoint Stop", mode = "n" },

	--noice
	{ "<leader>n", group = "Noice" },
	{ "<leader>nd", "<cmd>NoiceDismiss<cr>", desc = "Close Notifications", mode = "n" },

	--snippet

	--lint & formatting
	{
		"<leader>ls",
		function()
			require("lint").try_lint()
		end,
		desc = "Trigger Linting",
		mode = "n",
	},

	{
		{
			mode = { "n", "v" },
			"<leader>ft",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end,
			desc = "Trigger Formatting",
		},
	},
	--lint & formatting
})

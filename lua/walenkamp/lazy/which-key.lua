return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer-local keymaps",
		},
	},
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>c", group = "code" },
			{ "<leader>d", group = "diff" },
			{ "<leader>fm", group = "find / format" },
			{ "<leader>g", group = "git" },
			{ "<leader>h", group = "git hunks" },
			{ "<leader>m", group = "metals" },
			{ "<leader>s", group = "search" },
			{ "<leader>t", group = "toggle / terminal" },
			{ "<leader>w", group = "workspace" },
			{ "<leader>x", group = "diagnostics / lists" },
		},
	},
}

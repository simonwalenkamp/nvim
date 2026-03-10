return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
	keys = {
		{ "<leader>dv", "<cmd>DiffviewOpen<cr>", desc = "Diffview: open diff view" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview: file history (current file)" },
		{ "<leader>dH", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview: file history (branch)" },
		{ "<leader>dq", "<cmd>DiffviewClose<cr>", desc = "Diffview: close" },
	},
	opts = {},
}

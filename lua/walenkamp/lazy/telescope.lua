return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	config = function()
		require("telescope").setup({
			defaults = {
				path_display = { "truncate" },
			},
			pickers = {
				find_files = {
					hidden = false,
				},
				live_grep = {
					additional_args = function()
						return {  }
					end,
				},
				buffers = {
					sort_lastused = true,
					mappings = {
						i = {
							["<C-d>"] = "delete_buffer",
						},
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		local project = require("walenkamp.project")
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({ cwd = project.root() })
		end, { desc = "Find project files" })
		vim.keymap.set("n", "<leader>fg", function()
			builtin.live_grep({ cwd = project.root() })
		end, { desc = "Grep project files" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
	end,
}

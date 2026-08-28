return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local map = function(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
			end

			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, "Next Git hunk")
			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, "Previous Git hunk")

			map("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
			map("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
			map("x", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage selected hunk")
			map("x", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset selected hunk")
			map("n", "<leader>hS", gitsigns.stage_buffer, "Stage buffer")
			map("n", "<leader>hR", gitsigns.reset_buffer, "Reset buffer")
			map("n", "<leader>hp", gitsigns.preview_hunk_inline, "Preview hunk inline")
			map("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>hd", gitsigns.diffthis, "Diff against index")
			map("n", "<leader>hD", function()
				gitsigns.diffthis("~")
			end, "Diff against previous commit")
			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, "Toggle line blame")
			map({ "o", "x" }, "ih", gitsigns.select_hunk, "Git hunk")
		end,
	},
}

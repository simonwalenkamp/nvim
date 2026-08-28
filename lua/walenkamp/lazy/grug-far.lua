return {
	"MagicDuck/grug-far.nvim",
	cmd = "GrugFar",
	keys = {
		{
			"<leader>sr",
			function()
				require("grug-far").open({
					prefills = { paths = require("walenkamp.project").root() },
				})
			end,
			mode = "n",
			desc = "Search and replace project",
		},
		{
			"<leader>sr",
			function()
				require("grug-far").with_visual_selection({
					prefills = { paths = require("walenkamp.project").root() },
				})
			end,
			mode = "x",
			desc = "Replace selection in project",
		},
	},
	opts = {},
}

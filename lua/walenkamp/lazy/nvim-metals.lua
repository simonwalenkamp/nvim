return {
	"scalameta/nvim-metals",
	dependencies = {
		"j-hui/fidget.nvim",
		opts = {},
	},
	ft = { "scala", "sbt", "java" },
	opts = function()
		local metals_config = require("metals").bare_config()

		metals_config.settings = {
			showImplicitArguments = true,
		}

		metals_config.init_options.statusBarProvider = "off"

		metals_config.capabilities = require("blink.cmp").get_lsp_capabilities()

		metals_config.on_attach = function(_, bufnr)
			vim.keymap.set("n", "<leader>ws", function()
				require("metals").hover_worksheet()
			end, { buffer = bufnr, desc = "Metals worksheet hover" })
			vim.keymap.set("n", "<leader>ma", function()
				require("telescope").extensions.metals.commands()
			end, { buffer = bufnr, desc = "Metals commands" })
		end

		return metals_config
	end,
	config = function(self, metals_config)
		local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = self.ft,
			callback = function()
				require("metals").initialize_or_attach(metals_config)
			end,
			group = nvim_metals_group,
		})
	end,
}

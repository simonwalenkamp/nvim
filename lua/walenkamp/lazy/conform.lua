return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>fm",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = { "n", "x" },
      desc = "Format document",
    },
  },
  opts = {
    formatters_by_ft = {
      hcl = { "terraform_fmt" },
      json = { "prettier" },
      jsonc = { "prettier" },
      lua = { "stylua" },
      sbt = { "scalafmt" },
      scala = { "scalafmt" },
      terraform = { "terraform_fmt" },
      markdown = { "prettier" }
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}

local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		typescript = { "prettier" },
		javascript = { "prettier" },

    python = { "isort", "black" },

		sh = { "shfmt" },
	},

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
}

require("conform").setup(options)

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		css = { "prettierd" },
		html = { "prettierd" },
		json = { "prettierd" },
		yaml = { "prettierd" },
		markdown = { "prettierd" },
		elixir = { "mix" },
	},
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})

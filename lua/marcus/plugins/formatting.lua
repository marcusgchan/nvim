return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				python = { "isort", "black" },
				c = { "clang_format" },
			},
			format_on_save = {
				lsp_fallback = true,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fd", function()
			conform.format({
				lsp_fallback = true,
			})
		end)
	end,
}

vim.filetype.add({
	extension = {
		templ = "templ",
	},
})

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"cmake",
				"lua",
				"vimdoc",
				"javascript",
				"typescript",
				"tsx",
				"sql",
				"html",
				"css",
				"dockerfile",
				"json",
				"prisma",
				"svelte",
				"templ",
				"python",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

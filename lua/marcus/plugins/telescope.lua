return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local builtin = require("telescope.builtin")

		-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fi", function()
			-- builtin.find_files({ find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" } })
			builtin.find_files({
				no_ignore = true,
				find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
			})
		end, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
	end,
}

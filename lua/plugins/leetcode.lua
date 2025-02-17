local leet_arg = "leet"

return {
	"kawre/leetcode.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	lazy = leet_arg ~= vim.fn.argv(0, -1),
	opts = {
		arg = leet_arg,
		lang = "python3",
	},
}

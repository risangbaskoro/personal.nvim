return {
	{ -- Change color scheme
		"catppuccin/nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			-- Load the colorscheme here.
			vim.cmd.colorscheme("catppuccin-mocha")

			-- You can configure highlights by doing something like:
			vim.cmd.hi("Comment gui=none")
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et

-- Theme changer
-- See: https://github.com/zaldih/themery.nvim
return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			-- add the config here
			themes = { "catppuccin", "tokyonight" },
			livePreview = true,
		})
	end,

	vim.keymap.set("n", "<leader>tt", "<cmd>:Themery<CR>", { desc = "[T]oggle [T]heme" }),
}

-- [[ Configure and install plugins ]]
--  See :Lazy
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("plugins/gitsigns"), -- Show git hint for hunks
	require("plugins/which-key"), -- Show keymap hints
	require("plugins/telescope"), -- fuzzy finder over lists
	require("plugins/lspconfig"),
	require("plugins/conform"),
	require("plugins/cmp"),
	require("plugins/todo-comments"),
	require("plugins/mini"),
	-- require("plugins/treesitter"),
	require("plugins/autopairs"),

	require("plugins.themery"),
	require("plugins.themes.catppuccin"),
	require("plugins.themes.tokyo-night"),
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et

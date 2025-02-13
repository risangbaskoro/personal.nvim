-- [[ Configure and install plugins ]]
--  See :Lazy
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("plugins/gitsigns"),
	require("plugins/which-key"),
	require("plugins/telescope"),
	require("plugins/lspconfig"),
	require("plugins/conform"),
	require("plugins/cmp"),
	require("plugins/catppuccin"),
	require("plugins/neo-tree"),
	require("plugins/todo-comments"),
	require("plugins/mini"),
	require("plugins/treesitter"),
	require("plugins/autopairs"),
	require("plugins/no-neck-pain"),

	-- require 'plugins.debug',
	-- require 'plugins.indent_line',
	-- require 'plugins.lint',
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

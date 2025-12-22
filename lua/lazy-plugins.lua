-- [[ Configure and install plugins ]]
--  See :Lazy
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("plugins/gitsigns"), -- Adds git related signs to the gutter, as well as utilities for managing changes
	require("plugins/which-key"), -- Show pending keybinds
	require("plugins/telescope"), -- Fuzzy Finder (files, lsp, etc)
	require("plugins/lspconfig"), -- LSP Plugins
	require("plugins/conform"), -- Autoformat
	require("plugins/cmp"), -- Autocompletion
	require("plugins/todo-comments"), -- Highlight todo, notes, etc in comments
	require("plugins/mini"), -- Collection of various small independent plugins/modules
	require("plugins/treesitter"), -- Highlight, edit, and navigate code
	require("plugins/autopairs"), -- Autopairing brackets, etc

	require("plugins.themery"), -- Theme selector
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

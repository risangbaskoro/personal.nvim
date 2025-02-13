return {
	-- No neck pain for zen mode
	-- Creates evenly sized empty buffers on each side of your focused buffer, which acts as padding for your window.
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	opts = {
		buffers = {
			scratchPad = {
				-- set to `false` to
				-- disable auto-saving
				enabled = false,
				-- set to `nil` to default
				-- to current working directory
				location = "~/Documents/",
			},
			bo = {
				filetype = "md",
			},
			wo = {
				fillchars = "eob: ",
			},
		},
		autocmds = {
			-- When `true`, enables the plugin when you start Neovim.
			-- If the main window is  a side tree (e.g. NvimTree) or a dashboard, the command is delayed until it finds a valid window.
			-- The command is cleaned once it has successfuly ran once.
			---@type boolean
			enableOnVimEnter = false,
		},
		mappings = {
			-- When `true`, creates all the mappings that are not set to `false`.
			---@type boolean
			enabled = true,
			-- Sets a global mapping to Neovim, which allows you to toggle the plugin.
			-- When `false`, the mapping is not created.
			---@type string
			toggle = "<Leader>np",
			-- Sets a global mapping to Neovim, which allows you to toggle the left side buffer.
			-- When `false`, the mapping is not created.
			---@type string
			toggleLeftSide = "<Leader>nql",
			-- Sets a global mapping to Neovim, which allows you to toggle the right side buffer.
			-- When `false`, the mapping is not created.
			---@type string
			toggleRightSide = "<Leader>nqr",
			-- Sets a global mapping to Neovim, which allows you to increase the width (+5) of the main window.
			-- When `false`, the mapping is not created.
			---@type string | { mapping: string, value: number }
			widthUp = "<Leader>n=",
			-- Sets a global mapping to Neovim, which allows you to decrease the width (-5) of the main window.
			-- When `false`, the mapping is not created.
			---@type string | { mapping: string, value: number }
			widthDown = "<Leader>n-",
			-- Sets a global mapping to Neovim, which allows you to toggle the scratchPad feature.
			-- When `false`, the mapping is not created.
			---@type string
			scratchPad = "<Leader>ns",
		},
	},
}

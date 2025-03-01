return {
	{ -- Collection of various small independent plugins/modules
		--  Check out: https://github.com/echasnovski/mini.nvim
		"echasnovski/mini.nvim",
		config = function()
			-- Better Around/Inside textobjects
			--
			-- Examples:
			--  - va)  - [V]isually select [A]round [)]paren
			--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
			--  - ci'  - [C]hange [I]nside [']quote
			require("mini.ai").setup({ n_lines = 500 })

			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			--
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sd'   - [S]urround [D]elete [']quotes
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()

			-- Simple and easy statusline.
			local statusline = require("mini.statusline")
			-- set use_icons to true if you have a Nerd Font
			statusline.setup({ use_icons = vim.g.have_nerd_font })

			-- You can configure sections in the statusline by overriding their
			-- default behavior.
			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return "%2l:%-2v"
			end

			-- Simple starter screen
			local day_footer = function()
				local day = vim.fn.strftime("%A")
				local timer = vim.uv.new_timer()
				if timer ~= nil then
					timer:start(
						0,
						1000,
						vim.schedule_wrap(function()
							if vim.bo.filetype ~= "ministarter" then
								timer:stop()
								return
							end
							MiniStarter.refresh()
						end)
					)
				end

				return function()
					if day == "Sunday" then
						return ("It's %s! Do not code."):format(day)
					elseif day == "Wednesday" then
						return ("What a week, huh?\n\nCaptain, it's %s"):format(day)
					else
						return ("It's %s. Be creative."):format(day)
					end
				end
			end

			require("mini.starter").setup({
				-- Footer
				footer = day_footer(),
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et

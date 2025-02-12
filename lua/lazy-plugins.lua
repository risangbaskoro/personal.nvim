-- [[ Configure and install plugins ]]
--  See :Lazy
require('lazy').setup({
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  
    require 'base/plugins/gitsigns',
    require 'base/plugins/which-key',
    require 'base/plugins/telescope',
    require 'base/plugins/lspconfig',
    require 'base/plugins/conform',
    require 'base/plugins/cmp',
    -- require 'base/plugins/tokyonight',
    -- require 'base/plugins/todo-comments',
    -- require 'base/plugins/mini',
    -- require 'base/plugins/treesitter',
  
    -- require 'base.plugins.debug',
    -- require 'base.plugins.indent_line',
    -- require 'base.plugins.lint',
    -- require 'base.plugins.autopairs',
    -- require 'base.plugins.neo-tree',
  
    -- { import = 'custom.plugins' },
  }, {
    ui = {
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  })
  
  -- vim: ts=2 sts=2 sw=2 et
  
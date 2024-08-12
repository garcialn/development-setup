return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    local neogit = require 'neogit'
    neogit.setup {
      graph_style = 'unicode',
      signs = {
        -- { CLOSED, OPENED }
        hunk = { ' ', '󰍷 ' },
        item = { ' ', ' ' },
        section = { ' ', ' ' },
      },
      -- Keymaps
      vim.keymap.set('n', '<leader>ns', neogit.open, { silent = true, noremap = true, desc = 'Neogit Status' }),
      vim.keymap.set('n', '<leader>nc', ':Neogit commit<CR>', { silent = true, noremap = true, desc = 'Neogit Commit' }),
      vim.keymap.set('n', '<leader>np', ':Neogit pull<CR>', { silent = true, noremap = true, desc = 'Neogit Pull' }),
      vim.keymap.set('n', '<leader>nP', ':Neogit push<CR>', { silent = true, noremap = true, desc = 'Neogit Push' }),
      vim.keymap.set('n', '<leader>nb', ':Telescope git_branches<CR>', { silent = true, noremap = true, desc = 'Neogit Branches' }),
      vim.keymap.set('n', '<leader>nB', ':G blame<CR>', { silent = true, noremap = true, desc = 'Neogit Blame' }),
    }
  end,
}

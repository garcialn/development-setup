return {
  'folke/trouble.nvim',
  opts = {
    signs = {
      -- icons / text used for a diagnostic
      error = ' ',
      warning = ' ',
      hint = '󰛨 ',
      information = ' ',
      other = ' ',
    },
    fold_open = '󰝰 ', -- icon used for open folds
    fold_closed = '󰉋 ', -- icon used for closed folds
  },
  config = function()
    -- Lua
    vim.keymap.set('n', '<leader>xx', function()
      require('trouble').toggle()
    end, { desc = 'Toggle trouble list' })
    vim.keymap.set('n', '<leader>xw', function()
      require('trouble').toggle 'workspace_diagnostics'
    end, { desc = 'Toggle workspace diagnostics' })

    vim.keymap.set('n', '<leader>xd', function()
      require('trouble').toggle 'document_diagnostics'
    end, { desc = 'Document diagnostics' })
    vim.keymap.set('n', '<leader>xq', function()
      require('trouble').toggle 'quickfix'
    end, { desc = 'Quickfix trouble' })
    vim.keymap.set('n', '<leader>xl', function()
      require('trouble').toggle 'loclist'
    end, { desc = 'Toggle loclist' })
    vim.keymap.set('n', 'gR', function()
      require('trouble').toggle 'lsp_references'
    end, { desc = 'LSP references' })
  end,
}

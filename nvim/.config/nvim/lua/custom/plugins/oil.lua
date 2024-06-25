return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  default_file_explorer = true,
  config = function()
    require('oil').setup {
      columns = { 'icon', 'size' },
      win_options = {
        signcolumn = 'yes',
        foldcolumn = '1',
      },
      delete_to_trash = true,
      keymaps = {
        ['<C-h>'] = false,
        ['<C-o>'] = 'actions.select_split',
      },
      view_options = {
        show_hiden = true,
      },
    }
    -- Open parent dir in current window
    vim.keymap.set('n', '<leader>-', '<cmd>Oil<cr>', { desc = 'Open parent dir' })

    -- Open parent dir in floating window
    vim.keymap.set('n', '-', require('oil').toggle_float, { desc = 'Open parent dir in float window' })
  end,
}

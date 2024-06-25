return {
  {
    'nvim-pack/nvim-spectre',
    lazy = true,
    cmd = { 'Spectre' },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'catppuccin/nvim',
    },
    config = function()
      local theme = require('vscode.colors').get_colors()

      vim.api.nvim_set_hl(0, 'SpectreSearch', { bg = theme.vscPink, fg = theme.vscBack })
      vim.api.nvim_set_hl(0, 'SpectreReplace', { bg = theme.vscBlueGreen, fg = theme.vscBack })

      require('spectre').setup {
        highlight = {
          search = 'SpectreSearch',
          replace = 'SpectreReplace',
        },
        replace_engine = {
          sed = {
            cmd = 'sed',
          },
        },
      }
    end,
  },
}

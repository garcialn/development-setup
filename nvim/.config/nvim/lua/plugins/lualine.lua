return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          globalstatus = true,
          theme = 'vscode', --'catppuccin-mocha'
          component_separators = { left = '|', right = '|' },
          section_separators = { left = '', right = '' },
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = {
            'mode',
            {
              'fileformat',
              symbols = {
                unix = ' ', -- e712
              },
            },
          },
          lualine_b = {
            'windows',
            { 'branch', icon = { '' } },
            {
              'diff',
              diff_color = {
                -- Same values as the general color option can be used here.
                added = { fg = '#6FFF6F' }, -- Changes diagnostics' error color.
                modified = { fg = '#FFEA20' }, -- Changes diagnostics' warn color.
                removed = { fg = '#FF4949' }, -- Changes diagnostics' info color.
              },
              colored = true,
              sections = { 'added', 'modified', 'removed' },
              symbols = { added = ' ', modified = '󰏬 ', removed = ' ' },
            },
          },
          lualine_c = {
            {
              'diagnostics',
              diagnostics_color = {
                -- Same values as the general color option can be used here.
                error = { fg = 'FF5F5F' }, -- Changes diagnostics' error color.
                warn = { fg = 'D7D7AF' }, -- Changes diagnostics' warn color.
                info = { fg = '28DF99' }, -- Changes diagnostics' info color.
                hint = { fg = '5FAFD7' }, -- Changes diagnostics' hint color.
              },
              colored = true,
              sections = { 'error', 'warn', 'info', 'hint' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰛨 ' },
            },
          },
          lualine_x = {
            {
              'harpoon2',
              icon = ' ',
              no_harpoon = ' ',
            },
          },
          lualine_y = {
            'filetype',
          },
          lualine_z = { 'progress', 'location' },
        },
      }
    end,
  },
}

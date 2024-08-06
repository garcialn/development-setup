return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper', --  theme is doom and hyper default is hyper
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            desc = '󱍷 Update',
            group = '@property',
            action = 'Lazy update',
            key = 'u',
          },
          {
            desc = '󰈮 Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          -- FIX: Check for the correct command for `search-NeovimFiles`
          -- {
          --   desc = ' Apps',
          --   group = 'DiagnosticHint',
          --   action = 'Telescope app',
          --   key = 'a',
          -- },
          -- FIX: Check for the correct commmand for Search .config/
          -- {
          --   desc = ' dotfiles',
          --   group = 'Number',
          --   action = 'Telescope dotfiles',
          --   key = 'd',
          -- },
        },
        packages = { enable = true }, -- show how many plugins neovim loaded
        -- limit how many projects list, action when you press key or enter it will run this action.
        -- action can be a functino type, e.g.
        -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
        project = { enable = false, limit = 5, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
        mru = { limit = 10, icon = ' ', label = '', cwd_only = false },
        footer = { '@garcialn' }, -- footer
      },
      disable_move = false, --  default is false disable move keymap for hyper
      shortcut_type = 'number', --  shorcut type 'letter' or 'number'
      -- shuffle_letter  --  default is true, shortcut 'letter' will be randomize, set to false to have ordered letter.
      -- change_to_vcs_root -- default is false,for open file in hyper mru. it will change to the root of vcs
      hide = {
        statusline = true, -- hide statusline default is true
        -- tabline       -- hide the tabline
        winbar = true, -- hide winbar
      },
      preview = {
        -- command, -- preview command
        -- file_path, -- preview file path
        -- file_height, -- preview file height
        -- file_width, -- preview file width
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}

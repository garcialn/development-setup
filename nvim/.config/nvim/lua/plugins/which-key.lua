return {
  -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
  opts = {
    preset = 'modern',
    -- XXX: show a warning when issues were detected with your mappings
    notify = true,
    --- You can add any mappings here, or use `require('which-key').add()` later
    icons = {
      breadcrumb = '»', -- symbol used in the command line area that shows your active key combo
      separator = '➜', -- symbol used between a key and it's label
      group = ' ', -- symbol prepended to a group
      ellipsis = '…',
      -- set to false to disable all mapping icons,
      -- both those explicitely added in a mapping
      -- and those from rules
      mappings = true,
      --- See `lua/which-key/icons.lua` for more details
      --- Set to `false` to disable keymap icons from rules
      rules = {},
      -- use the highlights from mini.icons
      -- When `false`, it will use `WhichKeyIcon` instead
      colors = true,
      -- used by key format
      keys = {
        Up = ' ',
        Down = ' ',
        Left = ' ',
        Right = ' ',
        C = '󰘴 ',
        M = '󰘵 ',
        D = '󰘳 ',
        S = '󰘶 ',
        CR = '󰌑 ',
        Esc = '󱊷 ',
        ScrollWheelDown = '󱕐 ',
        ScrollWheelUp = '󱕑 ',
        NL = '󰌑 ',
        BS = '󰁮 ',
        Space = '󱁐 ',
        Tab = '󰌒 ',
        F1 = '󱊫 ',
        F2 = '󱊬 ',
        F3 = '󱊭 ',
        F4 = '󱊮 ',
        F5 = '󱊯 ',
        F6 = '󱊰 ',
        F7 = '󱊱 ',
        F8 = '󱊲 ',
        F9 = '󱊳 ',
        F10 = '󱊴 ',
        F11 = '󱊵 ',
        F12 = '󱊶 ',
      },
    },
  },
  config = function()
    -- Which-key keymaps
    local wk = require 'which-key'
    wk.add {
      -- [LEADER] mappings
      { '<leader>d', icon = '󰈙 ', group = '[d]ocument' },
      { '<leader>r', icon = '󰑕 ', group = '[r]ename' },
      { '<leader>s', icon = ' ', group = '[s]earch' },
      { '<leader>w', icon = ' ', group = '[w]orkspace' },
      { '<leader>t', icon = ' ', group = '[t]oggle' },
      { '<leader>N', icon = ' ', group = '[N]otebook' },
      { '<leader>n', icon = '󰊢 ', group = '[n]eogit' },
      { '<leader>x', icon = '󰟃 ', group = 'E[x]tras' },
      {
        -- Nested mappings are allowed and can be added in any order
        -- Most attributes can be inherited or overridden on any level
        -- There's no limit to the depth of nesting
        mode = { 'n', 'v' }, -- NORMAL and VISUAL mode
        { '<leader>h', icon = ' ', group = '[h]arpoon' }, -- no need to specify mode since it's inherited
        { '<leader>g', icon = ' ', group = '[g]itsigns' }, -- no need to specify mode since it's inherited
        { '<leader>c', icon = ' ', group = '[c]ode' },
        { '<leader>S', icon = '󱥰 ', group = '[S]nack' },
      },
      -- [S]urrounding key Maps
      { 'sa', icon = '', group = '[s]urround [a]dd' },
      { 'sd', icon = '', group = '[s]urround [d]elete' },
      { 'sr', icon = '', group = '[s]urround [r]eplace' },
      { 'sh', icon = '', group = '[s]urround [h]ighlight' },
    }
  end,
}

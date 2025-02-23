return {
  ---@type YaziLazyNvimSpec
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  enabled = true,
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '-',
      '<cmd>Yazi<cr>',
      -- function()
      --   require('yazi').yazi()
      -- end,
    },
    {
      -- Open in the current working directory
      '<leader>-',
      function()
        require('yazi').yazi(nil, vim.fn.getcwd())
      end,
      desc = "Open the file manager in nvim's working directory",
    },
  },
  ---@type YaziConfig
  opts = {
    -- open_for_directories = true,
    yazi_floating_window_border = 'single',
  },
}

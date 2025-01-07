return {
  {
    'GCBallesteros/NotebookNavigator.nvim',
    keys = {
      {
        ']j',
        function()
          require('notebook-navigator').move_cell 'd'
        end,
      },
      {
        '[j',
        function()
          require('notebook-navigator').move_cell 'u'
        end,
      },
      { '<leader>Nr', "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
      -- { "<leader>", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
    },
    dependencies = {
      'echasnovski/mini.comment',
      'hkupty/iron.nvim', -- repl provider
      'anuvyklack/hydra.nvim',
    },
    event = 'VeryLazy',
    config = function()
      local nn = require 'notebook-navigator'
      nn.setup { activate_hydra_keys = '<leader>Nh' }
    end,
  },
}

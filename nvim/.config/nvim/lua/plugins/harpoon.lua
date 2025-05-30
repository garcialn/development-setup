return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    VeryLazy = true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {}

      -- basic telescope configuration
      local conf = require('telescope.config').values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
      end

      vim.keymap.set('n', '<leader>hh', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Open harpoon window' })
      vim.keymap.set('n', '<leader>ha', function()
        harpoon:list():add()
      end, { desc = 'Add file to harpoon' })
      vim.keymap.set('n', '<leader>hr', function()
        harpoon:list():remove()
      end, { desc = 'Remove file from harpoon' })

      vim.keymap.set('n', '<leader>h1', function()
        harpoon:list():select(1)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h2', function()
        harpoon:list():select(2)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h3', function()
        harpoon:list():select(3)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h4', function()
        harpoon:list():select(4)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h5', function()
        harpoon:list():select(5)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h6', function()
        harpoon:list():select(6)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h7', function()
        harpoon:list():select(7)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h8', function()
        harpoon:list():select(8)
      end, { desc = 'Select x from harpoon' })
      vim.keymap.set('n', '<leader>h9', function()
        harpoon:list():select(9)
      end, { desc = 'Select x from harpoon' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<backspace>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<tab>', function()
        harpoon:list():next()
      end)
    end,
  },
}

return {
  'rasulomaroff/reactive.nvim',
  config = function()
    require('reactive').setup {
      builtin = {
        cursorline = true,
        cursor = true,
        modemsg = true,
        -- Some things
        configs = {
          presetone = {
            modes = {
              n = {},
              r = {},
              d = {},
              i = {
                winhl = {
                  StatusLine = { bg = '#0f25ac', fg = '#9d487b' },
                },
              },
            },
          },
        },
      },
    }
  end,
}

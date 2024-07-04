return {
  'mistricky/codesnap.nvim',
  build = 'make build_generator',
  keys = {
    { '<leader>cc', '<cmd>CodeSnap<cr>', mode = 'v', desc = 'CodeSnap save it to clipboard' },
    { '<leader>cs', '<cmd>CodeSnapSave<cr>', mode = 'v', desc = 'CodeSnap save it to ~/Imagens/codesnaps/' },
  },
  config = function()
    require('codesnap').setup {
      {
        mac_window_bar = true,
        title = '',
        code_font_family = 'JetBrainsMono Nerd Font',
        watermark_font_family = 'Pacifico',
        watermark = '@garcialn',
        bg_theme = 'summer',
        save_path = '~/Imagens/codesnaps/',
        breadcrumbs_separator = '/',
        has_breadcrumbs = false,
        has_line_number = false,
        min_width = 0,
      },
    }
  end,
}

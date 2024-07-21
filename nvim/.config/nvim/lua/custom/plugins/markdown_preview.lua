return {
  'iamcco/markdown-preview.nvim',
  cmd = {
    'MarkdownPreviewToggle',
    'MarkdownPreview',
    'MarkdownPreviewStop',
  },
  ft = 'markdown',
  build = function()
    vim.fn['mkdp#util#install']()
  end,
  -- vim.g.mkdp_browser == '/usr/bin/microsoft-edge',
}

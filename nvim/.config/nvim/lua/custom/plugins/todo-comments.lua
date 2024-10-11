return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = true,
    keywords = {
      FIX = {
        icon = ' ',
        color = 'error',
        alt = { 'BUG', 'FIXIT', 'ISSUE' },
      },
      TODO = { icon = ' ', color = 'todo' },
      HINT = { icon = '󰛨 ', color = 'hint' },
      WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
      INFO = { icon = '󰋼 ', color = 'info', alt = { 'NOTE' } },
      TEST = { icon = '󰙨 ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
      PERF = { icon = '󱎫 ', color = 'perf', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
      EXAM = { icon = ' ', color = 'exam', alt = { 'WHAT' } },
    },
    -- FIX:
    -- TODO:
    -- HINT:
    -- WARN:
    -- PERF:
    -- INFO:
    -- TEST:
    -- EXAM:
    colors = {
      error = { '#FF204E' }, --'DiagnosticError', 'ErrorMsg',
      todo = { '#EBF400' }, --'Identifier',
      hint = { 'int', '#14C38E' }, --'DiagnosticHint',
      warning = { '#FF5200' }, --'DiagnosticWarn', 'WarningMsg',
      info = { '#1CD6CE' }, --'DiagnosticInfo',
      test = { '#548CFF' }, --'Identifier',
      perf = { '#6F61C0' }, --'Identifier',
      exam = { '#F6E96B' },
    },
  },
}

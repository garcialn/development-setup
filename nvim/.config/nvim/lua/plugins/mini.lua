return {
  -- INFO: Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.splitjoin').setup()
    --    -- Toggle join and split lines inside block

    -- require('mini.bufremove').setup()
    --    -- Buffer delete

    -- require('mini.indentscope').setup()
    --    -- Indentation scope

    require('mini.pairs').setup()
    --    -- Automatic pairs

    require('mini.operators').setup()
    --    -- Operators to change text and block_side
    --    --> Evaluate
    --    --> Exchange
    --    --> Multiply
    --    --> Replace
    --    --> Sort

    require('mini.move').setup()
    --    --> Move selections arround

    --require('mini.git').setup()
    --    -- Git integration

    -- PERF: I liked the results, but while using 4gb of RAM, gonna leave it off...
    -- require('mini.animate').setup()
    --     -- Nvim animation

    require('mini.cursorword').setup()
    --     -- Highlight same words under the cursor

    require('mini.ai').setup { n_lines = 500 }
    --     -- Better Around/Inside textobjects
    --     --
    --     -- Examples:
    --     --  - va)  - [V]isually select [A]round [)]paren
    --     --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --     --  - ci'  - [C]hange [I]nside [']quote

    -- XXX: Use `which-key` to define some guidings | Surround has started to conflict with (apparently) builtin func
    require('mini.surround').setup()
    --     -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --     --
    --     -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    --     -- - sd'   - [S]urround [D]elete [']quotes
    --     -- - sr)'  - [S]urround [R]eplace [)] [']
  end,
}

return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets', 'moyiz/blink-emoji.nvim' },

  -- use a release tag to download pre-built binaries
  version = '*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {

    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = {
      preset = 'enter',
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
    },

    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
      menu = { border = 'single' },
      documentation = { window = { border = 'single' } },
    },
    signature = { window = { border = 'single' } },
    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer', 'dadbod', 'emoji' },
      providers = {
        -- TODO: Check how to add correctly the following providers
        lsp = {
          name = 'LSP',
          module = 'blink.cmp.sources.lsp',
        },
        buffer = {
          score_offset = -3,
          min_keyword_length = 3,
        },
        snippets = {
          min_keyword_length = 1, -- don't show when triggered manually, useful for JSON keys
          score_offset = -1,
        },
        path = {
          opts = { get_cwd = vim.uv.cwd },
        },
        emoji = {
          module = 'blink-emoji',
          name = 'Emoji',
          score_offset = 15,
          opts = { insert = true },
        },
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
        dadbod = {
          name = 'Dadbod',
          module = 'vim_dadbod_completion.blink',
          score_offset = 20,
        },
      },
    },
  },
  opts_extend = { 'sources.default' },
}

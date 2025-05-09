return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "fw", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "ft", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "fr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "fs", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  },
}

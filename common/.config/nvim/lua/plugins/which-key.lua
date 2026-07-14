return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  ---@module 'which-key'
  ---@type wk.Opts
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },
    spec = {
      { "<leader>s", group = "Search", mode = { "n", "v" } },
      { "<leader>t", group = "Toggle" },
      { "<leader>b", group = "Buffer" },
      { "<leader>c", group = "Code" },
      { "<leader>g", group = "Goto" },
      { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } }, -- Enable gitsigns recommended keymaps first
      { "<leader>r", group = "Restart" },
      { "gr", group = "LSP Actions", mode = { "n" } },
      { "gs", group = "Surround", mode = { "n", "v" } },
    },
  },
}

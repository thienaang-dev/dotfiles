return {
  "NMAC427/guess-indent.nvim",
  event = "BufReadPost",
  opts = {},
  config = function(_, opts)
    require("guess-indent").setup(opts)

    vim.keymap.set("n", "<leader>ri", "<cmd>GuessIndent<CR>", { desc = "Indent" })
  end,
}

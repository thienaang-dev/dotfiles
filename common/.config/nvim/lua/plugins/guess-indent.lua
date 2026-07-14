return {
  "NMAC427/guess-indent.nvim",
  event = "BufReadPost",
  config = function()
    vim.keymap.set("n", "<leader>ri", "<cmd>GuessIndent<CR>", { desc = "Restart [I]ndent" })
  end,
}

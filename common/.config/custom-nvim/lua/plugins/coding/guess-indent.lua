vim.pack.add({ "https://github.com/nmac427/guess-indent.nvim" })

require("guess-indent").setup({
  auto_cmd = true,
})

vim.keymap.set(
  "n",
  "<leader>ri",
  function() require("guess-indent").guess_indent() end,
  { desc = "[R]eset [I]ndent" }
)

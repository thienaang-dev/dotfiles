vim.pack.add({ "https://github.com/folke/trouble.nvim" })

require("trouble").setup({})

vim.keymap.set(
  "n",
  "<leader>xx",
  "<cmd>Trouble diagnostics toggle<cr>",
  { desc = "Open [T]rouble" }
)
vim.keymap.set(
  "n",
  "<leader>xX",
  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set(
  "n",
  "<leader>xw",
  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Open [T]rouble with [W]arnings" }
)
vim.keymap.set(
  "n",
  "<leader>xl",
  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "Open [T]rouble with [L]ocals" }
)
vim.keymap.set(
  "n",
  "<leader>xQ",
  "<cmd>Trouble qflist toggle<cr>",
  { desc = "Quickfix List (Trouble)" }
)

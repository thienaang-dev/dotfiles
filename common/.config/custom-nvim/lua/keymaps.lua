local keymap = vim.keymap

-- Clear highlight with <esc>
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Save with <ctrl-s>
keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- Error navigation
keymap.set(
  "n",
  "[e",
  "<cmd>lua vim.diagnostic.jump({ count = -1, float = true })<CR>",
  { desc = "Jump to previous error" }
)
keymap.set(
  "n",
  "]e",
  "<cmd>lua vim.diagnostic.jump({ count = 1, float = true })<CR>",
  { desc = "Jump to previous error" }
)

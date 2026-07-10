vim.pack.add({ "https://github.com/akinsho/bufferline.nvim" })

require("bufferline").setup()

vim.keymap.set("n", "<leader>bd", "<cmd>bdelete!<CR>", { desc = "Close buffer" })
vim.keymap.set(
  "n",
  "<leader>bo",
  "<cmd>BufferLineCloseOthers<CR>",
  { desc = "Close other buffers" }
)
vim.keymap.set(
  "n",
  "<leader>br",
  "<cmd>BufferLineCloseRight<CR>",
  { desc = "Close right buffers" }
)
vim.keymap.set(
  "n",
  "<leader>bl",
  "<cmd>BufferLineCloseLeft<CR>",
  { desc = "Close left buffers" }
)

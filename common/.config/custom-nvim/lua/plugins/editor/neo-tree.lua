vim.pack.add({
  {
    src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
    version = vim.version.range("*"),
  },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
})

require("neo-tree").setup({
  filesystem = {
    window = {
      position = "right",
      mappings = {
        ["\\"] = "close_window",
      },
    },
    filtered_items = {
      visible = true,
    },
    bind_to_cwd = true,
    follow_current_file = {
      enabled = true,
      leave_dirs_open = false,
    },
  },
})

vim.keymap.set(
  "n",
  "<leader>e",
  "<cmd>Neotree toggle<CR>",
  { desc = "Toggle Neotree", silent = true }
)
vim.keymap.set(
  "n",
  "<leader>E",
  "<cmd>Neotree toggle dir=./<CR>",
  { desc = "Toggle Neotree (CWD)", silent = true }
)

return {
  "folke/todo-comments.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function(_, opts)
    require("todo-comments").setup(opts)
    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>st",
      "<cmd>TodoQuickFix<CR>",
      { desc = "All TODO" }
    )
    keymap.set(
      "n",
      "]t",
      function() require("todo-comments").jump_next() end,
      { desc = "TODO Comment" }
    )
    keymap.set(
      "n",
      "[t",
      function() require("todo-comments").jump_prev() end,
      { desc = "TODO Comment" }
    )
  end,
}

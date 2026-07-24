return {
  {
    "nvim-mini/mini.surround",
    event = "InsertEnter",
    version = "*",
    opts = {
      mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
      },
    },
    config = true,
  },
  {
    "nvim-mini/mini.hipatterns",
    event = "BufReadPost",
    version = "*",
    config = function()
      local hipatterns = require("mini.hipatterns")
      hipatterns.setup({
        highlighters = {
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      })
    end,
  },
  {
    "nvim-mini/mini.bufremove",
    event = "BufReadPost",
    version = "*",
    config = function()
      local buf = require('mini.bufremove')

      vim.keymap.set("n", "<leader>bd", buf.delete, { desc = "Delete Buffer" })
    end,
  }
}

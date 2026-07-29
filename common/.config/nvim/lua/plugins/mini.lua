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
      local bufremove = require("mini.bufremove")

      vim.keymap.set("n", "<leader>bd", bufremove.delete, { desc = "Delete" })
      vim.keymap.set("n", "<leader>bw", bufremove.wipeout, { desc = "Wipeout" })
      vim.keymap.set("n", "<leader>bl", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf < current_buf then bufremove.delete(buf, false) end
        end
      end, { desc = "Delete Left" })
      vim.keymap.set("n", "<leader>bL", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf < current_buf then bufremove.wipeout(buf, false) end
        end
      end, { desc = "Wipeout Left" })
      vim.keymap.set("n", "<leader>br", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf > current_buf then bufremove.delete(buf, false) end
        end
      end, { desc = "Delete Right" })
      vim.keymap.set("n", "<leader>bR", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf > current_buf then bufremove.wipeout(buf, false) end
        end
      end, { desc = "Wipeout Right" })
      vim.keymap.set("n", "<leader>bo", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf ~= current_buf then bufremove.delete(buf, false) end
        end
      end, { desc = "Delete Others" })
      vim.keymap.set("n", "<leader>bO", function()
        local all_bufs = vim.api.nvim_list_bufs()
        local current_buf = vim.api.nvim_get_current_buf()

        for _, buf in ipairs(all_bufs) do
          if vim.fn.buflisted(buf) == 1 and buf ~= current_buf then
            bufremove.wipeout(buf, false)
          end
        end
      end, { desc = "Delete Others" })
    end,
  },
}

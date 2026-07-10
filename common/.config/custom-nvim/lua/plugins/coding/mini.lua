vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

-- Highlight HEX color patterns
local hipatterns = require("mini.hipatterns")
hipatterns.setup({
  hex_color = hipatterns.gen_highlighter.hex_color(),
})

-- Add/delete/replace surroundings (brackets, quotes, etc.)
require("mini.surround").setup({
  mappings = {
    add = "gsa", -- Add surrounding in Normal and Visual modes
    delete = "gsd", -- Delete surrounding
    find = "gsf", -- Find surrounding (to the right)
    find_left = "gsF", -- Find surrounding (to the left)
    highlight = "gsh", -- Highlight surrounding
    replace = "gsr", -- Replace surrounding

    suffix_last = "gl", -- Suffix to search with "prev" method
    suffix_next = "gn", -- Suffix to search with "next" method
  },
})

-- Simple and easy statusline.
local statusline = require("mini.statusline")
statusline.setup({ use_icons = false })
---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return "%2l:%-2v" end

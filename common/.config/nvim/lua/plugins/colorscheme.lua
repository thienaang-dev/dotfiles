return {
  {

  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  config = function()
    local g = vim.g
    g.everforest_background = "medium"
    g.everforest_enable_italic = 1
    g.everforest_transparent_background = 2
    g.everforest_diagnostic_text_highlight = 1
    g.everforest_diagnostic_line_highlight = 1
    g.everforest_diagnostic_virtual_text = "colored"
    g.everforest_better_performance = 1

    vim.cmd.colorscheme("everforest")
  end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "everforest" },
  },
}

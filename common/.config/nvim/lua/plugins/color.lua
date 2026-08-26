return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      local g = vim.g
      g.gruvbox_material_background = "soft"
      g.gruvbox_material_enable_italic = 1
      g.gruvbox_material_transparent_background = 2
      g.gruvbox_material_diagnostic_text_highlight = 1
      g.gruvbox_material_diagnostic_line_highlight = 1
      g.gruvbox_material_diagnostic_virtual_text = "colored"
      g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox-material" },
  },
}

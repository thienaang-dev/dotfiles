return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    --- @type GruvboxConfig
    opts = {
      contrast = "soft",
      dim_inactive = true,
      transparent_mode = true,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },

  -- Disable plugins
  {
    "catppuccin/nvim",
    enabled = false,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
}

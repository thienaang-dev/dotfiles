return {
  "Exafunction/windsurf.nvim",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "saghen/blink.cmp",
    "nvim-lua/plenary.nvim",
  },
  ---@module "codeium"
  opts = {
    enable_cmp_source = false,
  },
  config = function(_, opts) require("codeium").setup(opts) end,
}

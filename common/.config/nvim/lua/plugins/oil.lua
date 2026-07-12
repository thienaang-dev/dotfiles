return {
  "stevearc/oil.nvim",
  lazy = false,
  priority = 1000,
  ---@module "oil"
  ---@type oil.SetupOpts
  opts = {
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<cr>"] = "actions.select",
      ["<c-s>"] = { "<cmd>w<CR>", mode = "n" },
      ["<c-v>"] = { "actions.select", opts = { vertical = true } },
      ["<c-h>"] = { "actions.select", opts = { horizontal = true } },
      ["<c-p>"] = "actions.preview",
      ["<c-c>"] = { "actions.close", mode = "n" },
      ["<c-l>"] = "actions.refresh",
      ["-"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["`"] = { "actions.cd", mode = "n" },
      ["g~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
      ["gs"] = { "actions.change_sort", mode = "n" },
      ["gx"] = "actions.open_external",
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["g\\"] = { "actions.toggle_trash", mode = "n" },
    },
    use_default_keymaps = false,
    view_options = {
      show_hidden = true,
    },
  },
  config = function(_, opts)
    require("oil").setup(opts)

    -- Open explorer with <leader>-e
    vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Explorer" })
  end,
}

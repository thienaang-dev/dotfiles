vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup({
  delay = 0,
  icons = { mappings = vim.g.have_nerd_font },
  spec = {
    { "<leader>s", group = "[S]earch", mode = { "n", "v" } },
    { "<leader>x", group = "[D]iagnostics", mode = { "n", "v" } },
    { "<leader>t", group = "[T]oggle" },
    { "<leader>b", group = "[B]uffer", mode = { "n", "v" } },
    { "<leader>c", group = "[C]oding", mode = { "n", "v" } },
    { "<leader>r", group = "[R]eset", mode = { "n", "v" } },
    -- Enable gitsigns recommended keymaps first
    { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
    { "gr", group = "LSP Actions", mode = { "n" } },
  },
})

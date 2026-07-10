vim.pack.add({
  { src = "https://github.com/L3MON4D3/LuaSnip", version = vim.version.range("2.*") },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/Exafunction/windsurf.nvim" },
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
})

require("luasnip").setup({})
require("luasnip.loaders.from_vscode").lazy_load()
require("codeium").setup({
  enable_cmp_source = false,
})
require("blink.cmp").setup({
  keymap = {
    preset = "none",
    ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-e>"] = { "hide" },
    ["<C-y>"] = { "select_and_accept" },
    ["<Up>"] = { "select_prev", "fallback" },
    ["<Down>"] = { "select_next", "fallback" },
    ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
    ["<C-n>"] = { "select_next", "fallback_to_mappings" },
    ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
  },
  appearance = { nerd_font_variant = "mono" },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 200 },
  },
  sources = {
    default = { "lsp", "path", "snippets", "codeium" },
    providers = {
      codeium = { name = "Codeium", module = "codeium.blink", async = true },
    },
  },
  snippets = { preset = "luasnip" },
  fuzzy = { implementation = "lua" },
  signature = { enabled = true },
})

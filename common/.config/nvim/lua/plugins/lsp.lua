return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- LSP
        "html-lsp",
        "css-lsp",

        -- Linters
        "selene",
        "luacheck",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                library = { "${3rd}/love2d/library" },
              },
            },
          },
        },
      },
    },
  },
}

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "BufNewFile" },
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>cf",
      function() require("conform").format({ async = true }) end,
      mode = "n",
      desc = "Code Format",
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local enabled_filetypes = {}
      if enabled_filetypes[vim.bo[bufnr].filetype] then
        return { timeout_ms = 500 }
      else
        return nil
      end
    end,
    default_format_opts = {
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      lua = { "stylua", stop_after_first = true },
      markdown = { "markdownlint", stop_after_first = true },
      c = { "clang_format", stop_after_first = true },
      yaml = { "yamlfmt", stop_after_first = true },
      ["*"] = { "prettier" },
    },
  },
}

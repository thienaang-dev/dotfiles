return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      lua = { "luacheck" },
      c = { "cpplint" },
      markdown = { "markdownlint" },
      docker = { "hadolint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      yaml = { "yamllint" },
      json = { "jsonlint" },
    }

    -- Create autocommand which carries out the actual linting
    -- on the specified events.
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        if vim.bo.modifiable then lint.try_lint() end
      end,
    })
  end,
}

return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPost", "BufNewFile" },
  ---@module 'gitsigns'
  ---@type Gitsigns.Config
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    signs = {
      add = { text = "+" }, ---@diagnostic disable-line: missing-fields
      change = { text = "~" }, ---@diagnostic disable-line: missing-fields
      delete = { text = "_" }, ---@diagnostic disable-line: missing-fields
      topdelete = { text = "‾" }, ---@diagnostic disable-line: missing-fields
      changedelete = { text = "~" }, ---@diagnostic disable-line: missing-fields
    },
    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gitsigns.nav_hunk("next")
        end
      end, { desc = "Jump To Next Git Change" })

      map("n", "[c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gitsigns.nav_hunk("prev")
        end
      end, { desc = "Jump To Previous Git Change" })

      -- Actions
      -- visual mode
      map(
        "v",
        "<leader>hs",
        function() gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") }) end,
        { desc = "Hunk Stage" }
      )
      map(
        "v",
        "<leader>hr",
        function() gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end,
        { desc = "Hunk Reset" }
      )
      -- normal mode
      map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Hunk Stage" })
      map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Hunk Reset" })
      map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Hunk Buffer Stage" })
      map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Hunk Buffer Reset" })
      map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Hunk Preview" })
      map("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Hunk Inline Preview" })
      map(
        "n",
        "<leader>hb",
        function() gitsigns.blame_line({ full = true }) end,
        { desc = "Hunk Blank Line" }
      )
      map("n", "<leader>hd", gitsigns.diffthis, { desc = "Hunk Diff" })
      map(
        "n",
        "<leader>hD",
        function() gitsigns.diffthis("@") end,
        { desc = "Hunk Diff Against Last Commit" }
      )
      map(
        "n",
        "<leader>hQ",
        function() gitsigns.setqflist("all") end,
        { desc = "Hunk All Quickfix List" }
      )
      map("n", "<leader>hq", gitsigns.setqflist, { desc = "Hunk Quickix List" })
      -- Toggles
      map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle Line Blame" })
      map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "Toggle Word Diff" })

      -- Text object
      map({ "o", "x" }, "ih", gitsigns.select_hunk)
    end,
  },
}

return {
  "nvim-telescope/telescope.nvim",
  enabled = true,
  event = "VimEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function() return vim.fn.executable("make") == 1 end,
    },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local telescopeConfig = require("telescope.config")

    -- Clone the default Telescope configuration
    local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

    -- I want to search in hidden/dot files.
    table.insert(vimgrep_arguments, "--hidden")
    -- I don't want to search in these directories.
    for _, glob in ipairs({
      "!**/.git/*",
      "!**/.next/*",
      "!**/build/*",
    }) do
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, glob)
    end

    telescope.setup({
      defaults = { vimgrep_arguments = vimgrep_arguments },
      pickers = {
        find_files = {
          -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
    })

    -- Enable Telescope extensions if they are installed
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")

    -- See `:help telescope.builtin`
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Help" })
    vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Keymaps" })
    vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Files" })
    vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "Select Telescope" })
    vim.keymap.set(
      { "n", "v" },
      "<leader>sw",
      builtin.grep_string,
      { desc = "Current Word" }
    )
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Grep" })
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Diagnostics" })
    vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "Resume" })
    vim.keymap.set(
      "n",
      "<leader>s.",
      builtin.oldfiles,
      { desc = 'Recent Files' }
    )
    vim.keymap.set("n", "<leader>sc", builtin.commands, { desc = "Commands" })
    vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Existing buffers" })

    -- This runs on LSP attach per buffer (see main LSP attach function in 'neovim/nvim-lspconfig' config for more info,
    -- it is better explained there). This allows easily switching between pickers if you prefer using something else!
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("telescope-lsp-attach", { clear = true }),
      callback = function(event)
        local buf = event.buf

        -- Find references for the word under your cursor.
        vim.keymap.set(
          "n",
          "grr",
          builtin.lsp_references,
          { buffer = buf, desc = "References" }
        )

        -- Jump to the implementation of the word under your cursor.
        -- Useful when your language has ways of declaring types without an actual implementation.
        vim.keymap.set(
          "n",
          "gri",
          builtin.lsp_implementations,
          { buffer = buf, desc = "Implementation" }
        )

        -- Jump to the definition of the word under your cursor.
        -- This is where a variable was first declared, or where a function is defined, etc.
        -- To jump back, press <C-t>.
        vim.keymap.set(
          "n",
          "grd",
          builtin.lsp_definitions,
          { buffer = buf, desc = "Definition" }
        )

        -- Fuzzy find all the symbols in your current document.
        -- Symbols are things like variables, functions, types, etc.
        vim.keymap.set(
          "n",
          "gO",
          builtin.lsp_document_symbols,
          { buffer = buf, desc = "Open Document Symbols" }
        )

        -- Fuzzy find all the symbols in your current workspace.
        -- Similar to document symbols, except searches over your entire project.
        vim.keymap.set(
          "n",
          "gW",
          builtin.lsp_dynamic_workspace_symbols,
          { buffer = buf, desc = "Open Workspace Symbols" }
        )

        -- Jump to the type of the word under your cursor.
        -- Useful when you're not sure what type a variable is and you want to see
        -- the definition of its *type*, not where it was *defined*.
        vim.keymap.set(
          "n",
          "grt",
          builtin.lsp_type_definitions,
          { buffer = buf, desc = "Type Definitions" }
        )
      end,
    })

    -- Override default behavior and theme when searching
    vim.keymap.set("n", "<leader>/", function()
      -- You can pass additional configuration to Telescope to change the theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
      }))
    end, { desc = "Fuzzily In Current Buffer" })

    vim.keymap.set(
      "n",
      "<leader>s/",
      function()
        builtin.live_grep({
          grep_open_files = true,
          prompt_title = "Live Grep in Open Files",
        })
      end,
      { desc = "Opened Files" }
    )

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set(
      "n",
      "<leader>sC",
      function() builtin.find_files({ cwd = vim.fn.stdpath("config") }) end,
      { desc = "Configuration" }
    )
  end,
}

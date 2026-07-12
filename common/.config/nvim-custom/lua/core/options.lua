local o = vim.o

o.autowrite = true -- automatically write file if changed
o.clipboard = "unnamedplus" -- use the clipboard as the unnamed register
o.completeopt = "menu,menuone,noinsert" -- options for Insert mode completion
o.confirm = true -- ask what to do about unsaved/read-only files
o.cursorline = true -- highlight the screen line of the cursor
o.expandtab = true -- use spaces when <Tab> is inserted
o.ignorecase = true -- ignore case in search patterns
o.linebreak = false -- wrap long lines at a blank
o.mouse = "a" -- enable the use of mouse clicks
o.number = true -- print the line number in front of each line
o.relativenumber = true -- show relative line number in front of each line
o.scrolloff = 15 -- minimum nr. of lines above and below cursor
o.shiftround = true -- round indent to multiple of shiftwidth
o.shiftwidth = 2 -- number of spaces to use for (auto)indent step
o.showmode = false -- message on status line to show current mode
o.smartcase = true -- no ignore case when pattern has uppercase
o.smartindent = true -- smart autoindenting for C programs
o.smarttab = true -- <Tab> in leading whitespace indents by 'shiftwidth'
o.splitbelow = true -- new window from split is below the current one
o.splitright = true -- new window is put right of the current one
o.timeoutlen = 300 -- time out time in milliseconds
o.undofile = true -- save undo information in a file
o.updatetime = 250 -- after this many milliseconds flush swap file
o.wrap = false -- long lines wrap and continue on the next line

-- Diagnostic Config & Keymaps
vim.diagnostic.config({
  update_in_insert = false,
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float({
        bufnr = bufnr,
        scope = "cursor",
        focus = false,
      })
    end,
  },
})

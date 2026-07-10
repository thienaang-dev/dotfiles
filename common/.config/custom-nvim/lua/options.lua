local o = vim.o

-- Enable line number (relative)
o.number = true
o.relativenumber = true

-- Sync clipboard
o.clipboard = "unnamedplus"

-- Enable mouse
o.mouse = "a"

-- Hide mode
o.showmode = false

-- Show cursor line
o.cursorline = true

-- Enable break indent
o.breakindent = true

-- Enable undo/redo changes even after closing and reopening a file
o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true

-- Keep signcolumn on by default
o.signcolumn = "yes"

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time
o.timeoutlen = 300

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- Keep 10 lines above/below cursor when scrolling
o.scrolloff = 10

-- Confirm unsave changes
o.confirm = true

-- Move selected items vertically with Shift + j/k
vim.keymap.set("v", "J", ":m '>+2<CR>gv=gv", { desc = "Move selected item down" })
vim.keymap.set("v", "K", ":m '<-1<CR>gv=gv", { desc = "Move selected item up" })

-- Move selected items horizontally with </>
vim.keymap.set("v", "<", "<gv", { desc = "Move selected item left" })
vim.keymap.set("v", ">", ">gv", { desc = "Move selected item right" })

-- Put next/previous search item at the center
vim.keymap.set("n", "n", "nzzzv", { desc = "Move and center next search item" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move and center previous search item" })

-- Auto center when jump with Ctrl + u/d
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down and center" })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

local keymap = vim.keymap

-- Move selected items horizontally with </>
keymap.set("v", "<", "<gv", { desc = "Move selected item left" })
keymap.set("v", ">", ">gv", { desc = "Move selected item right" })

-- Put next/previous search item at the center
keymap.set("n", "n", "nzzzv", { desc = "Move and center next search item" })
keymap.set("n", "N", "Nzzzv", { desc = "Move and center previous search item" })

-- Auto center when jump with Ctrl + u/d
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up and center" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down and center" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

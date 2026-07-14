local keymap = vim.keymap

-- Save with <ctrl-s>
keymap.set("n", "<c-s>", "<cmd>w<CR>", { desc = "Save" })

-- Clear highlight with <esc>
keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlight" })

-- Quit with <leader>-q
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Open lazy with <leader>-l
keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Open mason with <leader>-m
keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- Close current buffer with <leader>-bd
keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Buffer Delete" })

-- Restart LSP with <leader>rl
vim.keymap.set("n", "<leader>rl", "<cmd>lsp restart<CR>", { desc = "Restart [L]SP" })

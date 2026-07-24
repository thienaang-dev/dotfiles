local keymap = vim.keymap

-- Save with <ctrl-s>
keymap.set("n", "<c-s>", "<cmd>w<CR>", { desc = "Save" })

-- Quit with <leader>-q
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Open lazy with <leader>-l
keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Open mason with <leader>-m
keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- Restart LSP with <leader>rl
vim.keymap.set("n", "<leader>rl", "<cmd>lsp restart<CR>", { desc = "LSP" })

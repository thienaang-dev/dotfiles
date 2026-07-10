-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- Clear undo tree
vim.api.nvim_create_user_command("ClearUndo", function()
  local old_undolevels = vim.opt_local.undolevels:get()
  vim.opt_local.undolevels = -1
  vim.cmd([[execute "normal! a \<BS>\<Esc>"]])
  vim.opt_local.undolevels = old_undolevels
end, { desc = "Clear undo history" })

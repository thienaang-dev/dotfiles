-- Clear undo
vim.api.nvim_create_user_command("ClearUndo", function()
  local old_undolevels = vim.opt_local.undolevels:get()
  vim.opt_local.undolevels = -1
  vim.cmd([[execute "normal! a \<BS>\<Esc>"]])
  vim.opt_local.undolevels = old_undolevels
end, { desc = "Clear undo history" })

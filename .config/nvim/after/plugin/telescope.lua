local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ph', function ()
    builtin.find_files({ hidden = true })
end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {});
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<Leader>pn', function()
    vim.cmd("cd ~/.config/nvim")
    builtin.find_files()
end)

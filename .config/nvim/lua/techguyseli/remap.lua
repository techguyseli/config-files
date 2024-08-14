vim.g.mapleader = ' '

-- Map <leader>tn to open a new tab
vim.api.nvim_set_keymap('n', '<leader>tN', ':tabnew<CR>', { noremap = true, silent = true })

-- Map <leader>tp to go to the previous tab
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprevious<CR>', { noremap = true, silent = true })

-- Map <leader>tn to go to the next tab
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnext<CR>', { noremap = true, silent = true })

-- Map <leader>tc to close the current tab
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })

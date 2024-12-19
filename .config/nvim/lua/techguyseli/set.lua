-- Enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
--
-- Disable line wrapping
vim.o.wrap = false

-- Set tabstop, shiftwidth, and expandtab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable system clipboard integration
vim.opt.clipboard:append("unnamedplus")

-- Set folding method (options: 'manual', 'indent', 'syntax', 'diff', 'expr')
vim.o.foldmethod = 'indent'   -- or 'indent' or 'manual'
vim.o.foldlevel = 1            -- Default fold level (0 = all folds closed, higher = more open)

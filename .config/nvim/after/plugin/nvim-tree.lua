-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set(
    'n',                    -- Mode: 'n' for normal mode
    '<leader>e',            -- Key combination
    function() vim.cmd('NvimTreeToggle') end,  -- Lua function to execute Vim command
    { noremap = true, silent = true }  -- Options: no remapping, silent execution
)

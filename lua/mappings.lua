-------------------------------------------------------
-- GENERAL
-------------------------------------------------------

-- Abbreviated variables to write less when configuring
local g = vim.g -- global variables
local key = vim.keymap.set -- remap keys
local default_opts = { noremap = true, silent = true }

-- Change map leader - more key combinations
g.mapleader = ' '

-- Alias for exiting a mode
key('i', 'jk', '<esc>', default_opts)
key('v', 'jk', '<esc>', default_opts)

-- Alias for yanking to and pasting from clipboard
key('v', '<leader>y', '"+y', default_opts)
key('v', '<leader>p', '"+p', default_opts)

-------------------------------------------------------
-- PLUGINS
-------------------------------------------------------

-- Nvim tree
key('n', '<leader>tt', ':NvimTreeToggle<CR>', default_opts) -- toggle tree
key('n', '<leader>tf', ':NvimTreeFocus<CR>', default_opts) -- toggle tree focus

-- Undotree
key('n', '<leader>u', ':UndotreeToggle<CR>', default_opts) -- toggle undotree

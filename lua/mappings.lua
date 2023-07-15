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
key('i', 'jk', '<ESC>', default_opts)

-------------------------------------------------------
-- PLUGINS
-------------------------------------------------------

-- Nvim tree
key('n', '<LEADER>t', ':NvimTreeToggle<ENTER>', default_opts) -- toggle tree
key('n', '<LEADER>f', ':NvimTreeFocus<ENTER>', default_opts) -- toggle tree focus

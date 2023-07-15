-------------------------------------------------------
-- GENERAL
-------------------------------------------------------

-- Abbreviated variables to write less when configuring
local opt = vim.opt -- same as set in vimscript

-- Mouse support enabled for all modes
opt.mouse = 'a'

-- Disable modelines, when not in use (reads x lines from head/tail of file)
opt.modelines = 0

-- Make sure to have utf8 standard encoding
opt.encoding = 'utf8'

-- Use Unix as the standard file type
opt.fileformats = 'unix,dos'

-- Automatically reads any changes made to the current open file by someone else
opt.autoread = true

-- Hide buffer messages = you can have unsaved changes, when opening more files
opt.hidden = true

-------------------------------------------------------
-- USABILITY
-------------------------------------------------------

-- Show line number
opt.number = true

-- Draws signcolumn next to numbers
opt.signcolumn = 'yes'

-- Highlight the line your cursor is on
opt.cursorline = true

-- Show column and line position
opt.ruler = true

-- When scrolling up or down, keep cursor 10 lines from top or bottom
opt.scrolloff = 10

-- Split window right and below
opt.splitright = true
opt.splitbelow = true

-- Autocomplete commands by using tab - move between choices with tab and s-tab
opt.wildmenu = true
opt.wildmode = 'longest:list,full'

-- Case-insensitive search, when searching all lowercase
opt.ignorecase = true
opt.smartcase = true

-- Highlight search results
opt.hlsearch = true

-- Search incrementally as you write
opt.incsearch = true

-- Don't redraw while executing macros
opt.lazyredraw = true

-- No need to backslash special characters with regex
opt.magic = true

-- Sets regex engine automatically
opt.regexpengine = 0

-- When over a bracket, show the other matching one
opt.showmatch = true

-- No sound on errors
--opt.noerrorbells = true
--opt.novisualbell = true
--opt.t_vb = ''
--opt.tm = 500

-------------------------------------------------------
-- COLOR
-------------------------------------------------------

-- Use 24-bit color
opt.termguicolors = true

-- Set colorscheme and background
vim.cmd("colorscheme kanagawa")
opt.background = 'dark'

-------------------------------------------------------
-- INDENTATION AND WRAPPING
-------------------------------------------------------

-- Use spaces when tabbing
opt.expandtab = true

-- Uses tabs according to situation
opt.smarttab = true

-- One tab shifts 4 spaces and indents rounded to shiftwidth
opt.shiftwidth = 4
opt.shiftround = true
opt.tabstop = 4
opt.softtabstop = 4

-- Smart auto indentation
opt.smartindent = true

-- Linebreak after 300 characters nonstop
opt.linebreak = true
opt.textwidth = 300

-- Wrap lines
opt.wrap = true
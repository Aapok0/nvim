-- Indents shown in different colored blocks (doesn't work with transparent bg)
--vim.cmd [[highlight IndentBlanklineIndent1 guibg=#0A0E14 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guibg=#04060B gui=nocombine]]

--[[require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}--]]

-- Indents shown with lines
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    --show_current_context = true,
    --show_current_context_start = true,
}

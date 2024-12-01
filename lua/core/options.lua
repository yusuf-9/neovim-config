-- Define your options as a table
local options = {
    number = true,            -- Show line numbers
    relativenumber = false,    -- Show relative line numbers
    tabstop = 4,              -- Number of spaces per tab
    shiftwidth = 4,           -- Number of spaces for indentation
    expandtab = true,         -- Convert tabs to spaces
    smartindent = true,       -- Smart indentation
    wrap = false,             -- Disable line wrapping
    swapfile = false,         -- Disable swap files
    backup = false,           -- Disable backup files
    undofile = true,          -- Enable undo files
    hlsearch = true,          -- Highlight search results
    ignorecase = true,        -- Case-insensitive search
    smartcase = true,         -- Case-sensitive search when uppercase is used
    splitright = true,        -- Open vertical splits to the right
    splitbelow = true,        -- Open horizontal splits below
    termguicolors = true,     -- Enable 24-bit RGB colors
    cursorline = true         -- Highlight the current line
}

-- Apply the options
for key, value in pairs(options) do
    vim.opt[key] = value
end

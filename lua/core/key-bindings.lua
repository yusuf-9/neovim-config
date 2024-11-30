-- Custom Key Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- key mapping for opening insert mode by using arrow keys
map("n", "<Up>", "i", opts)
map("n", "<Down>", "i", opts)
map("n", "<Left>", "i", opts)
map("n", "<Right>", "i", opts)

-- key mapping for opening neo-tree with ctrl + e
map("n", "<c-e>", ":Neotree toggle<cr>", opts)
-- sadassad
-- key mapping for focusing neo-tree with ctrl + w
map("n", "<c-w", ":Neotree focus toggle<cr>", opts)

map('n', 'l', ':Neotree reveal<CR>', opts)

map('n', 'h', ':Neotree close<CR>', opts)

-- key mapping for toggling the neotree with ctrl + e when in insert mode
map("i", "<C-e>", "<Esc>:Neotree toggle<CR>a", opts)

-- Key mapping for moving to the start of the line with Ctrl + Alt + Left Arrow
map("i", "<C-A-Left>", "<Esc>0i", opts)

-- Key mapping for moving to the end of the line with Ctrl + Alt + Right Arrow
map("i", "<C-A-Right>", "<Esc>$a", opts)

-- Key mapping for moving ten lines down with Ctrl + Alt + Down Arrow
map("i", "<C-A-Down>", "<Esc>10ji", opts)

-- Key mapping for moving ten lines up with Ctrl + Alt + Up Arrow
map("i", "<C-A-Up>", "<Esc>10ki", opts)

-- scroll up one line with Ctrl + Up Arrow (without moving the cursor)
map("i", "<C-Up>", "<Esc><C-y>a", opts)

-- Scroll down one line with Ctrl + Down Arrow (without moving the cursor)
map("i", "<C-Down>", "<Esc><C-e>a", opts)

-- Map + Enter to insert a new line below the cursor in insert mode
map("i", "<C-o>", "<Esc>o", opts)

-- Map Ctrl + d to select the word under the cursor in insert mode
map("i", "<C-d>", "<Esc>viw", opts)

-- Map Ctrl + Backspace to delete one word at a time in insert mode
map("i", "<C-H>", "<C-W>", opts)

-- Map Ctrl + Z to undo in Insert Mode
map("i", "<C-z>", "<Esc>ui", opts)

-- Map Ctrl + y to redo in Insert Mode
map("i", "<C-y>", "<Esc><C-R>a", opts)

-- Map Ctrl + C to copy selected text
map("v", "<C-c>", '"+y`>a', opts)

-- Map Ctrl + V to paste pasteselected text
map("i", "<C-v>", '<Esc>"+pa', opts)

-- Map Ctrl + shift + right to select text to the right
map("i", "<C-S-Right>", '<Esc>ve', opts)

-- Map Ctrl + shift + left to select text to the right
map("i", "<C-S-Left>", '<Esc>vb', opts)

-- Map Ctrl + Shift + Up to select lines upwards
map("i", "<C-S-Up>", "<Esc>V<Up>o<Esc>", opts)

-- Map Ctrl + Shift + Down to select lines downwards
map("i", "<C-S-Down>", "<Esc>V<Down>o<Esc>", opts)

-- Map Backsapce to delete selected text in visual mode
map("v", "<C-H>", 'di', opts)

-- Map ctrl + x to delete line in insert mode
map("i", "<C-x>", "<Esc>ddi", opts)

-- Map ctrl + x to cut text in visual mode
map("v", "<C-x>", '"+d<Esc>i', opts)

-- Shift + Arrow keys for selection in Normal mode
map("n", "<S-Up>", "v<Up>", opts)
map("n", "<S-Down>", "v<Down>", opts)
map("n", "<S-Left>", "v<Left>", opts)
map("n", "<S-Right>", "v<Right>", opts)

-- Shift + Arrow keys for movement in Visual mode
map("v", "<S-Up>", "<Up>", opts)
map("v", "<S-Down>", "<Down>", opts)
map("v", "<S-Left>", "<Left>", opts)
map("v", "<S-Right>", "<Right>", opts)

-- Shift + Arrow keys for selection in Insert mode (exit insert mode, enter visual, and move selection)
map("i", "<S-Up>", "<Esc>v<Up>", opts)
map("i", "<S-Down>", "<Esc>v<Down>", opts)
map("i", "<S-Left>", "<Esc>v<Left>", opts)
map("i", "<S-Right>", "<Esc>v<Right>", opts)

-- Map ctrl + s to save a file
map('i', '<C-s>', '<Esc><cmd> w <CR>i', opts)

-- Map ctrl + s to close a file
map('i', '<C-q>', '<Esc><cmd> q <CR>', opts)
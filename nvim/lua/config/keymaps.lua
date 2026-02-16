local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- Normal mode: Move current line up/down
map("n", "<S-Up>", ":m .-2<CR>==", opts) -- Alt + Up
map("n", "<S-Down>", ":m .+1<CR>==", opts) -- Alt + Down

-- Visual mode: Move selection up/down
map("v", "<S-Up>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-Down>", ":m '<-2<CR>gv=gv", opts)

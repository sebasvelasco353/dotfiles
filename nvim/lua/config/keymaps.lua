local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- Resize window using <ctrl> arrow keys
map("n", "<C-M-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-M-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-M-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-M-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Normal mode: Move current line up/down
map("n", "<S-Up>", ":m .-2<CR>==", opts) -- Alt + Up
map("n", "<S-Down>", ":m .+1<CR>==", opts) -- Alt + Down

-- Visual mode: Move selection up/down
map("v", "<S-Up>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-Down>", ":m '<-2<CR>gv=gv", opts)

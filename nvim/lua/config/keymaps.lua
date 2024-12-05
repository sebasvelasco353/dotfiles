-- QoL Keymaps
vim.keymap.set("n", "Y", "y$", { desc = "Yank to the end of the line" })

-- Obsidian Keymaps
vim.keymap.set("n", "<leader>o", "", { desc = "Obsidian" })
vim.keymap.set("n", "<leader>oo", ":ObsidianQuickSwitch<CR>", { desc = "Open Obsidian Note" })
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "Create new Obsidian Note" })
vim.keymap.set("n", "<leader>ot", ":ObsidianToday<CR>", { desc = "Create new Obsidian Today Note" })
vim.keymap.set("n", "<leader>oT", ":ObsidianTomorrow<CR>", { desc = "Create new Obsidian Tomorrow Note" })

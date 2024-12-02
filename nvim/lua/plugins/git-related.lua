return {
  {
    "lewis6991/gitsigns.nvim",
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Show current line's git diff" }),
    vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Git blame current line" }),
  },
}

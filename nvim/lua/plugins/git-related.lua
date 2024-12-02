return {
  {
    "lewis6991/gitsigns.nvim",
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Show current line's git diff" }),
  },
}

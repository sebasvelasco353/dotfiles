return {
  -- Gitsigns: inline git blame, hunk navigation, staging
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- inline git blame
      current_line_blame_opts = { delay = 300 },
    },
  },

  -- Neogit: Magit-style git UI
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim", -- beautiful diff view
    },
    opts = {},
  },
}

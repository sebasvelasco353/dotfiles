return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right", -- Move the explorer to the right
              width = 40, -- Set a custom width (in columns)
            },
          },
          hidden = true, -- Show hidden files
          ignored = true, -- Also show .gitignored files
          follow_file = true, -- Auto-reveal the current buffer in the tree
        },
      },
    },
  },
}

return {
  -- Add nordic theme
  {
    "AlexvZyl/nordic.nvim",
  },
  -- Use Nordic Theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },

  -- Snacks.nvim config (homepage)
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
Welcome back friend
]],
        },
      },
    },
  },
}

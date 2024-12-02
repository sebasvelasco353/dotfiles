return {
  -- Add nordic theme
  { "AlexvZyl/nordic.nvim" },
  -- Show css colorscheme
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
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
          header = [[ Welcome back friend ]],
        },
      },
    },
  },

  -- ScrollView (scrollbar and indicators)
  {
    "dstein64/nvim-scrollview",
    config = function(_, opts)
      require("scrollview").setup(opts)
      require("scrollview.contrib.gitsigns").setup(opts)

      vim.g.scrollview_excluded_filetypes = { "neo-tree", "nerdtree" }
      vim.g.scrollview_current_only = true
      vim.g.column = 120
      vim.g.scrollview_signs_on_startup =
        { "diagnostics", "marks", "search", "conflicts", "cursor", "search", "textwidth" }
      vim.g.scrollview_diagnostics_severities = {
        vim.diagnostic.severity.ERROR,
        -- vim.diagnostic.severity.INFO,
        -- vim.diagnostic.severity.HINT,
        -- vim.diagnostic.severity.WARN,
      }
    end,
    opts = {
      always_show = true,
    },
  },
}

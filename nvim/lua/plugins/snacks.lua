-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      files = {
        hidden = true,
      },
    },
    picker = {
      sources = {
        explorer = {
          -- Show ignored and hidden Files
          ignored = true,
          hidden = true,
          -- Move explorer to a floating window with preview
          auto_close = true,
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
    dashboard = {
      preset = {
        header = [[]],
      },
      sections = {
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        {
          pane = 2,
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        },
      },
    },
  },
}

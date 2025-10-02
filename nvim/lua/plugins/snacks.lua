-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- Move explorer to a floating window with preview
          layout = {
            { preview = true },
            layout = {
              box = "horizontal",
              width = 0.8,
              height = 0.8,
              {
                box = "vertical",
                border = "rounded",
                title = "{source} {live} {flags}",
                title_pos = "center",
                { win = "input", height = 1, border = "bottom" },
                { win = "list", border = "none" },
              },
              { win = "preview", border = "rounded", width = 0.7, title = "{preview}" },
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

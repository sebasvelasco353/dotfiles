return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        position = "float",
      },
    },
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
      ]],
       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         { icon = " ", key = "n", desc = "Open Note", action = ":Obsidian quick_switch" },
         { icon = " ", key = "d", desc = "Daily notes", action = ":Obsidian dailies" },
         { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         { icon = " ", key = "s", desc = "Restore Session", section = "session" },
         { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
         { icon = " ", key = "q", desc = "Quit", action = ":qa" },
       },
      },
    },
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

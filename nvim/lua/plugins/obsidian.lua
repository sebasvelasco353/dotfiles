return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    templates = {
      folder = "~/Documents/Notes/templates",
      date_format = "%d-%m-%Y-%a",
      time_format = "%H:%M",
    },
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/Notes/personal",
      },
      {
        name = "study",
        path = "~/Documents/Notes/study/",
      },
      {
        name = "work",
        path = "~/Documents/Notes/work",
      },
    },
  },
}

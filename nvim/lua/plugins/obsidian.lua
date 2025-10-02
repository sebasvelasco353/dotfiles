return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
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

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-telescope/telescope.nvim",
  },
  opts = {
    -- picker = {
    --   name = "telescope.nvim",
    --   note_mappings = {
    --     new = "<C-x>",
    --     insert_link = "<C-l>",
    --   },
    --   tag_mappings = {
    --     tag_note = "<C-x>",
    --     insert_tag = "<C-l>",
    --   },
    -- },
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

    -- see below for full list of options 👇
  },
}

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/notes/",
      },
    },

    templates = {
      folder = "/templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {},
    },

    daily_notes = {
      folder = "/dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily", "todo" },
      template = "/daily.md",
    },

    -- customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      -- This creates a note with the ID: fullYearMonthDay:HourMinuteSecond-title
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return suffix .. "-" .. tostring(os.date("%Y%m%d:%H%M%S"))
    end,
  },

  attachments = {
    -- The folder to place images in via `:ObsidianPasteImg`.
    img_folder = "/assets",
  },
}

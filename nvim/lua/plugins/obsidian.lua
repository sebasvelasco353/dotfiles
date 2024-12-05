return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  ft = "markdown",
  dependencies = {
    -- Required.
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
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "/dailies",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily", "todo" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "/daily.md",
    },

    -- customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      -- This creates a note with the following ID:
      -- fullYearMonthDay:HourMinuteSecond-title
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

  -- Define your own callbacks to further customize behavior.
  callbacks = {
    -- Runs right before writing the buffer for a note.
    ---@param client obsidian.Client
    ---@param note obsidian.Note
    pre_write_note = function(client, note) end,
  },
}

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

return {
  {
    "LazyVim/LazyVim",
    opts = {
      list = true, -- Show invisible characters
      expandtab = false, -- Do not use spaces instead of tabs
      tabstop = 4, -- Number of spaces tabs count for
    },
  },
}

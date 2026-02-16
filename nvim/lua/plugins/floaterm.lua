return {
  "dawsers/floaterm.nvim",
  config = function()
    local terminal = require("floaterm")
    -- You need to call setup
    terminal.setup()
    vim.keymap.set({ "n", "t" }, "<leader>tf", function()
      terminal.open()
    end, { silent = true, desc = "New floating terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tn", function()
      terminal.next()
    end, { silent = true, desc = "Next floating terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tp", function()
      terminal.prev()
    end, { silent = true, desc = "Prev floating terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tt", function()
      terminal.toggle()
    end, { silent = true, desc = "Toggle floating terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tl", function()
      terminal.pick()
    end, { silent = true, desc = "Floaterm picker" })
    vim.keymap.set({ "n", "t" }, "<leader>t-", function()
      terminal.resize(-0.05)
    end, { silent = true, desc = "Floaterm inc size" })
    vim.keymap.set({ "n", "t" }, "<leader>t=", function()
      terminal.resize(0.05)
    end, { silent = true, desc = "Floaterm dec size" })
    -- Example to run an arbitrary command
    vim.keymap.set("n", "<leader>tv", function()
      local cmd = "vifm"
      local file = vim.fn.expand("%:p")
      if file and file ~= "" then
        cmd = cmd .. " --select " .. file
      end
      terminal.open({}, cmd)
    end, { silent = true, desc = "vifm at current dir" })
    -- Set highlighting groups if your theme doesn't include them
    vim.api.nvim_set_hl(0, "FloatermNumber", { link = "Number" })
    vim.api.nvim_set_hl(0, "FloatermDirectory", { link = "Function" })
  end,
}

return {
  -- Mason: installs LSPs, linters, formatters automatically
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "ts_ls", -- TypeScript/JavaScript (React, Node)
        "vue_ls", -- Vue
        "gopls", -- Go
        "dockerls", -- Dockerfile
        "docker_compose_language_service",
        "marksman", -- Markdown
        "tailwindcss", -- if you use Tailwind
        "eslint", -- JS/TS linting
      },
    },
  },
  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets", -- premade snippet collection
    },
  },
}

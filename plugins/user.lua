return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- Highlight, list and search todo comments in your projects
  -- Smooth scrolling
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
    opts = {},
  },

  -- Navigate your code with search labels
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    opts = {},
    keys = {
      {
        "<leader>s",
        mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash",
      },
      {
        "<leader>S",
        mode = { "n", "o", "x" },
        function() require("flash").treesitter() end,
        desc = "Flash Treesitter",
      },
    },
  }, 

  -- Obsidian plugin
  {
    "epwalsh/obsidian.nvim",
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    }, 
    opts = {
     workspaces = {
       {
        name = 'obsidian-0',
        path = '~/Documents/obsidian-0' 
       }
     },
     ui = {
       enable = false
     }
    },
  },
  {
    "github/copilot.vim",
    event = "VeryLazy",
    version = '*',
    autoStart = true,
  },
}

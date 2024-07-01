return {
  "epwalsh/obsidian.nvim",
  enabled = true,
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter",
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    ui = {
      enabled = true,
    },
    workspaces = {
      {
        name = "personal",
        path = "~/workspace/maowen-archive/",
      },
    },
    -- see below for full list of options 👇
    notes_subdir = "_inbox",
    new_notes_location = "notes_subdir",
    note_id_func = function(title)
      local suffix = ""
      for _ = 1, 4 do
        suffix = suffix .. string.char(math.random(65, 90))
      end
      return tostring(os.date("%Y%m%d_%H%M%S")) .. "_" .. suffix
    end,
  },
  keys = {
    { "<leader>nf", "<cmd>ObsidianQuickSwitch<cr>", desc = "Find" },
    { "<leader>ng", "<cmd>ObsidianSearch<cr>", desc = "Grep" },
    { "<leader>nb", "<cmd>ObsidianBacklinks<cr>", desc = "Backlinks" },
    { "<leader>nT", "<cmd>ObsidianTemplate<cr>", desc = "Template" },
    { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "New" },
    { "<leader>nt", "<cmd>ObsidianTags<cr>", desc = "Tags" },
    { "<leader>nz", "<cmd>ZenMode | TogglePencil<cr>", desc = "ZenMode" },
  }
}

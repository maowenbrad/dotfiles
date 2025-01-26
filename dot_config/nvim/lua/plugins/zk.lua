return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      -- See Setup section below
    })
  end,
  keys = {
    { "<leader>zn", "<cmd>ZkNew { title = vim.fn.input('Title: ') }<cr>", desc = "+New Note" },
  },
}

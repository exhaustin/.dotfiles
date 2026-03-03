return {
  {
    "Isrothy/neominimap.nvim",
    version = "v3.*.*",
    lazy = false,
    keys = {
      { "<leader>nm", "<cmd>Neominimap toggle<cr>", desc = "Toggle Minimap" },
      { "<leader>nf", "<cmd>Neominimap toggleFocus<cr>", desc = "Toggle Minimap Focus" },
    },
    init = function()
      vim.g.neominimap = {
        auto_enable = true,
      }
    end,
  },
}

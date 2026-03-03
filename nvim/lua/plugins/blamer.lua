return {
  {
    "APZelos/blamer.nvim",
    event = "BufReadPost",
    keys = {
      { "<leader>gb", "<cmd>BlamerToggle<cr>", desc = "Toggle Git Blame" },
    },
    init = function()
      vim.g.blamer_enabled = 1
      vim.g.blamer_delay = 500
      vim.g.blamer_show_in_visual_modes = 0
    end,
  },
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.auto_install = false
      vim.list_extend(opts.ensure_installed, {
        "python",
        "cpp",
        "c",
      })
    end,
  },
}

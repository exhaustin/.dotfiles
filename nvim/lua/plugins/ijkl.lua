-- Plugin overrides for ijkl movement scheme
return {
  -- mini.ai: change inner text object prefix from i to h
  -- e.g. chw = change inner word, dhp = delete inner paragraph
  {
    "echasnovski/mini.ai",
    opts = function(_, opts)
      opts.mappings = opts.mappings or {}
      opts.mappings.inside = "h"
      opts.mappings.inside_next = "hn"
      opts.mappings.inside_last = "hl"
    end,
  },

  -- snacks picker + explorer: ijkl movement
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          -- list window (applies to all pickers including explorer)
          list = {
            keys = {
              ["i"] = "list_up",
              ["k"] = "list_down",
              ["j"] = false,
              ["h"] = "focus_input",
              ["<c-i>"] = "list_up",
              ["<c-k>"] = "list_down",
              ["<c-j>"] = false,
            },
          },
          -- input window (navigate list while typing)
          input = {
            keys = {
              ["<c-i>"] = { "list_up", mode = { "i", "n" } },
              ["<c-k>"] = { "list_down", mode = { "i", "n" } },
              ["<c-j>"] = false,
            },
          },
        },
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["j"] = "explorer_close", -- collapse dir (was h)
                  ["h"] = "focus_input",    -- was i
                },
              },
            },
          },
        },
      },
    },
  },

  -- gitsigns: remap hunk text object from ih to hh
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      local orig_on_attach = opts.on_attach
      opts.on_attach = function(buffer)
        if orig_on_attach then
          orig_on_attach(buffer)
        end
        pcall(vim.keymap.del, { "o", "x" }, "ih", { buffer = buffer })
        vim.keymap.set({ "o", "x" }, "hh", ":<C-U>Gitsigns select_hunk<CR>", {
          buffer = buffer,
          desc = "GitSigns Select Hunk",
          silent = true,
        })
      end
    end,
  },
}

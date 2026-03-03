-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Arrow keys in insert mode (terminal compatibility)
vim.keymap.set("i", "<Esc>OA", "<Up>")
vim.keymap.set("i", "<Esc>OB", "<Down>")
vim.keymap.set("i", "<Esc>OC", "<Right>")
vim.keymap.set("i", "<Esc>OD", "<Left>")

-- ============================================================================
-- ijkl movement scheme: i=up, j=left, k=down, l=right, h=insert
-- ============================================================================

-- Delete conflicting LazyVim defaults
vim.keymap.del("n", "<S-h>") -- H is now insert-at-BOL, not prev buffer
vim.keymap.del("n", "<C-h>") -- replaced by <C-j>
pcall(vim.keymap.del, "t", "<C-h>") -- may not exist in all setups
vim.keymap.del({ "n", "i", "v" }, "<A-j>") -- replaced by <A-k>

-- Core movement (normal + visual) with smart display-line wrapping
vim.keymap.set({ "n", "x" }, "i", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "j", "h", { desc = "Left" })

-- Operator-pending movement (no smart wrapping needed)
vim.keymap.set("o", "i", "k", { desc = "Up" })
vim.keymap.set("o", "k", "j", { desc = "Down" })
vim.keymap.set("o", "j", "h", { desc = "Left" })

-- Insert mode
vim.keymap.set("n", "h", "i", { desc = "Insert" })
vim.keymap.set("n", "H", "I", { desc = "Insert at BOL" })

-- Block insert (visual)
vim.keymap.set("x", "H", "I", { desc = "Block insert" })

-- Displaced commands (normal + visual)
vim.keymap.set({ "n", "x" }, "I", "H", { desc = "Top of screen" })

-- g-prefixed commands
vim.keymap.set("n", "gh", "gi", { desc = "Last insert position" })
vim.keymap.set({ "n", "x" }, "gi", "gk", { desc = "Display line up" })
vim.keymap.set({ "n", "x" }, "gk", "gj", { desc = "Display line down" })
vim.keymap.set({ "n", "x" }, "gj", "gh", { desc = "Start select mode" })

-- Window navigation (override LazyVim <C-hjkl>)
vim.keymap.set("n", "<C-j>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-i>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
vim.keymap.set("t", "<C-i>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })

-- Move lines (override LazyVim <A-j>/<A-k>)
vim.keymap.set("n", "<A-i>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("i", "<A-i>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("v", "<A-i>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })

-- Split window vertically and move to new pane
vim.keymap.set("n", "<leader>v", "<C-w>v<C-w>l")

-- Split window horizontally and move to new pane
vim.keymap.set("n", "<leader>s", "<C-w>s<C-w>j")

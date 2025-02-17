-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move windows
vim.keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle reveal<CR>")

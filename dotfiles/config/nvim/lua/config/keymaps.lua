local map = vim.keymap

-- closing
map.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Close all" })

-- search
map.set("n", "<leader><leader>", ":nohl<cr>", { desc = "Clear highlighting of search results" })

-- splits
map.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map.set("n", "<leader>sq", "<cmd>close<cr>", { desc = "Close current split" })

-- tabs
map.set("n", "<leader>tc", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
map.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "Open new tab" })
map.set("n", "<leader>th", "<cmd>tabp<cr>", { desc = "Go to previous tab" })
map.set("n", "<leader>tl", "<cmd>tabn<cr>", { desc = "Go to next tab" })
map.set("n", "<leader>tq", "<cmd>tabclose<cr>", { desc = "Close current tab" })

-- lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- jumping
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump downwards" })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump upwards" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Jump to next search match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Jump to previous search match" })

-- registers
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste from system" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy selection to system" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy current line to system" })

-- unbinds
vim.keymap.set("n", "Q", "<nop>", { desc = "Unbind Q in normal mode" })
vim.api.nvim_set_keymap("n", "<S-Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Right>", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("i", "<S-Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<S-Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<S-Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<S-Right>", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("v", "<S-Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Right>", "<Nop>", { noremap = true })

-- custom scripts
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux-sessionizer" })

-- TODO add this to which key
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file tree" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.opt.clipboard = "unnamed"
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank to system"})
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank to system"})
vim.keymap.set("n", "<leader>Y", "\"+y", { desc = "Yank to system"})
vim.keymap.set("n", "Q", "<nop>")

-- quickfix stuff
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

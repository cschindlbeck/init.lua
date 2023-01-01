vim.g.mapleader = " "

vim.keymap.set("x", "<leader>p", "\"_dP")

-- Switch windows with ctrl and vim motions
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- Copy paste to clipboard
-- NOT WORKING?
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Toggle nvim tree with leader n
vim.keymap.set('n', "<leader>n", [[:NvimTreeToggle<CR>]], {})

-- Open new tab
-- vim.keymap.set('n', "<leader>t", [[:tabnew<CR>]])

-- Toggle tabs
-- vim.keymap.set('n', "<leader>u", [[:tabn<CR>]])

-- Cycle Buffers
vim.keymap.set('n', "<C-p>", [[:bnext<CR>]])
vim.keymap.set('n', "<C-n>", [[:bprevious<CR>]])

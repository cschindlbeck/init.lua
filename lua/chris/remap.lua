vim.g.mapleader = " "

vim.keymap.set("x", "<leader>p", "\"_dP")

-- Switch windows with ctrl and vim motions
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- Copy paste to clipboard
-- NOT WORKING?
-- vim.keymap.set({'n', 'x'}, 'cp', '"+y')
-- vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Toggle nvim tree with leader n
vim.keymap.set('n', "<leader>n", [[:NvimTreeToggle<CR>]], {})

-- Open new tab
-- vim.keymap.set('n', "<leader>t", [[:tabnew<CR>]])

-- Toggle tabs
-- vim.keymap.set('n', "<leader>u", [[:tabn<CR>]])

-- Cycle Buffers
vim.keymap.set('n', "<C-p>", [[:bnext<CR>]])
vim.keymap.set('n', "<C-n>", [[:bprevious<CR>]])

-- Resize window using <shift> arrow keys
vim.keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<CR>")

-- CTRL S mapping because muscle memory is a thing
vim.keymap.set('n', "<C-S>", [[:update<CR>]])
vim.keymap.set('v', "<C-S>", [[<C-C>:update<CR>]])
vim.keymap.set('i', "<C-S>", [[<C-O>::update<CR>]])

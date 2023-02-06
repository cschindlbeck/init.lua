vim.g.mapleader = " "

-- Disable space as we set it as leader
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Split and quit via leader keys
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>")
vim.keymap.set("n", "<leader>hs", ":split<CR>")

-- Yank entire file
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Y behaves vim idiomatic
vim.keymap.set("n", "Y", "yg$")

-- Switch windows with ctrl and vim motions
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- Copy to clipboard, needs xclip installed on x11
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Paste and do not overwrite buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Delete into void buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Open new tab
-- vim.keymap.set('n', "<leader>t", [[:tabnew<CR>]])

-- Toggle tabs
-- vim.keymap.set('n', "<leader>u", [[:tabn<CR>]])

-- Cycle Buffers
vim.keymap.set('n', "<C-p>", [[:bnext<CR>]])
vim.keymap.set('n', "<C-n>", [[:bprevious<CR>]])

-- Close buffer
vim.keymap.set("n", "<leader>c", ":bd<CR>")

-- Resize window using <shift> arrow keys
vim.keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<CR>")

-- CTRL S mapping because muscle memory is a thing
vim.keymap.set('n', "<C-S>", [[:update<CR>]])
vim.keymap.set('v', "<C-S>", [[<C-C>:update<CR>]])
vim.keymap.set('i', "<C-S>", [[<C-O>::update<CR>]])

-- Move selected lines in visual mode up, down, left or right
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "L", ">gv")
vim.keymap.set("v", "H", "<gv")

-- Format file
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

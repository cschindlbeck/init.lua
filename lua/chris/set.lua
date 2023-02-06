local options = {

    clipboard = "unnamedplus",
    colorcolumn = "120",
    expandtab = true,
    hlsearch = true,
    ignorecase = true,
    incsearch = true,
    nu = true,
    relativenumber = true,
    smartindent = true,
    softtabstop = 4,
    scrolloff = 15,
    sidescrolloff = 8,
    shiftwidth = 4,
    swapfile = false,
    termguicolors = true,
    tabstop = 4,
    -- undofile = true,
    updatetime = 300,

}


for k, v in pairs(options) do
    vim.opt[k] = v
end

-- not working
-- vim.cmd([[ match ErrorMsg /\s+$/ ]])

-- Thick column and grey
-- vim.opt.cmd([[highlight ColorColumn ctermbg=0 guibg=lightgrey]])

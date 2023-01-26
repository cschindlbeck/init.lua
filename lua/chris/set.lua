local options = {

    nu = true,
    clipboard = "unnamedplus",
    relativenumber = true,
    termguicolors = true,
    ignorecase = true,
    smartindent = true,
    hlsearch = true,
    incsearch = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    colorcolumn = "120",
    scrolloff = 15,
    sidescrolloff = 8,
    updatetime = 300,

}


for k, v in pairs(options) do
    vim.opt[k] = v
end

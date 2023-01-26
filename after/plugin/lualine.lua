-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'vscode',
    component_separators = '|',
    -- section_separators = {left = '', right = ''},
  },
}

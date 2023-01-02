local lsp = require('lsp-zero')
lsp.preset('recommended')


lsp.ensure_installed ({
 'rust_analyzer',
 })

-- 'lua-language-server',
-- 'ansible-language-server',
-- 'jedi-language-server',

lsp.setup()

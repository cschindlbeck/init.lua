local lsp = require('lsp-zero')
lsp.preset('recommended')


lsp.ensure_installed ({
 'rust_analyzer',
 })

-- 'ansible-language-server',
-- 'jedi-language-server',

lsp.setup()

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed ({
 'rust_analyzer',
 -- 'lua-language-server',
 -- 'ansible-language-server',
 -- 'jedi-language-server',
 })

require('lspconfig').rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                    'cargo', 'clippy', '--workspace', '--message-format=json',
                    '--all-targets', '--all-features'
                }
            }
        }
    }
}

lsp.setup()

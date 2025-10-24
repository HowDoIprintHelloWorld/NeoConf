
vim.opt.signcolumn = 'yes' -- Avoids layout shifts


-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}
  
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  end,
})



vim.g.neoformat_enabled_python = {'prettier'}
vim.g.neoformat_virtual_text = true
-- vim.g.neoformat_verbose = 1


vim.lsp.enable('pyright')

vim.lsp.enable('lua_ls')

vim.lsp.enable('marksman')

vim.lsp.enable('cssls')

vim.lsp.enable("jdtls")
-- lspconfig.eslint.setup{}
vim.lsp.enable('eslint')

vim.lsp.enable('eslint-lsp')

vim.lsp.enable('ts_ls')

vim.lsp.enable('biome')

vim.lsp.enable('tsserver')

vim.lsp.enable('denols') -- deno

vim.lsp.enable('html')



vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.py'},
    command = 'Black',
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {'*.js', '*.ts', '*.tsx'},
  command = 'Neoformat prettier',
})


local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'}
    },
    completion = { completeopt = 'menu,menuone,noinsert'},
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = true})
    }),
})

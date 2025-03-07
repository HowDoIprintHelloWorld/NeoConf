
require'nvim-treesitter.configs'.setup{
    ensure_installed = { "c", "lua", "markdown", "markdown_inline", "python", "go" },

    sync_install = false, -- install packages in ensure_installed synchronously
    auto_install = true,

    highlight = {
        enable = true,
    }
}

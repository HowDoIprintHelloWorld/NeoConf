local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.live_grep, { desc = 'Search files for string (ripgrep)' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })


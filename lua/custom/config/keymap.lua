-- vim.keymap.set('i', 'jj', '<ESC>', { silent = true })
vim.keymap.set('n', '<CR>', ':noh<CR><CR>', { silent = true })
vim.keymap.set('i', '<C-h>', '<Left>', { silent = true })
vim.keymap.set('i', '<C-l>', '<Right>', { silent = true })

vim.keymap.set('n', '<leader>o', 'o<Esc>')
vim.keymap.set('n', '<leader>O', 'O<Esc>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set('n', '<leader>P', [["+p]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = false

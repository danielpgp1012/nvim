local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-S-p>', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

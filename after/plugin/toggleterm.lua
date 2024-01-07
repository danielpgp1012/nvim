local toggleterm = require("toggleterm").setup{}
vim.keymap.set('n', '<C-t>', vim.cmd.ToggleTerm, {})
vim.keymap.set('i', '<C-t>', vim.cmd.ToggleTerm, {})

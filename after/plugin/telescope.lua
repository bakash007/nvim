local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})	--fuzzy finder
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});	--find files with specific strings after >

end)

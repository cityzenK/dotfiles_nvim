require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"./node%_modules/.*", ".angular%/.*","node_modules"}
    }
}
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
--Search Braches in Git repository
vim.keymap.set('n','<leader>gb', function()
    builtin.git_branches{}
end)

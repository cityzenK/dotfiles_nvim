vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		separador_style = 'slant'
	}
}
vim.keymap.set('n', '<leader><Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

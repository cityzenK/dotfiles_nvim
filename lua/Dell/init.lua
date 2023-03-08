require("Dell.remap")
require("toggleterm").setup()

--PATH
vim.cmd([[let $PATH = "C:\\Program Files\\Git\\usr\\bin;" .  $PATH]])

vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.softtabstop=0
vim.opt.shiftwidth=4

vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")
vim.cmd("set fileencodings=utf-8")
vim.cmd("set ttyfast")

vim.cmd("set guifont=mononoki:h11:cANSI")

--Disable the blinking cursor.
vim.cmd("set gcr=a:blinkon0")

--terminal
--vim.cmd("nnoremap  <leader>h :botright new <Bar> :terminal powershell<cr>")


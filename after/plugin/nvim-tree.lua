-- examples for your init.lua
local api = require('nvim-tree.api')

local function opts(desc)
    return {desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
end

local nvim_tree_config = pcall(require, "nvim-tree.config")
--local tree_cb = nvim_tree_config.nvim_tree_callback



-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
      open_file = {
          quit_on_open = true
      },
  },
})
vim.cmd("nnoremap <silent><F3> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <silent><F2> :NvimTreeFindFile<CR>")
vim.keymap.set('n', '<C-b>', api.node.open.vertical,                opts('Open: Vertical Split'))

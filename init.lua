-- remap
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader>pv", vim.cmd.Ex)

-- set
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.scrolloff = 8

-- packer
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'folke/tokyonight.nvim'
  use {'catppuccino/nvim'}
end)

-- theme
function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd("colorscheme " .. color)

  -- Adjust background settings if needed
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE")
end

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
})

ColorMyPencils("catppuccin")

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.api.nvim_set_keymap('n', '<leader>ff', builtin.find_files, {}) -- fuzzy finder
vim.api.nvim_set_keymap('n', '<leader>fs', function()
  builtin.grep_string({search = vim.fn.input("Grep > ")}) -- find files with specific strings after >

end)


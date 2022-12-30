-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use{
	  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} 
  }

  -- use 'Mofiqul/vscode.nvim'  -- from 0.8 on
  -- fix for nvim 0.7
  use { 'Mofiqul/vscode.nvim', commit = "c5125820a0915ef50f03fae10423c43dc49c66b1" } 

end)

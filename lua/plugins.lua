vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'airblade/vim-gitgutter'
  use { 'dense-analysis/ale', config = [[require('config.ale')]] }
  use { 'dyng/ctrlsf.vim', config = [[require('config.ctrlsf')]] }
  use { 'fatih/vim-go', run = ':GoUpdateBinaries', config = [[require('config.vim-go')]] }
  use 'glench/vim-jinja2-syntax'
  use 'junegunn/seoul256.vim'
  use 'kyazdani42/nvim-web-devicons' -- for file icons
  use  'kyazdani42/nvim-tree.lua'
  use { 'mhinz/vim-startify', config = [[require('config.startify')]] }
  use { 'morhetz/gruvbox', config = [[require('config.gruvbox')]] }
  use 'neoclide/coc-denite'
  use { 'neoclide/coc.nvim', run = 'yarn install --frozen-lockfile', config = [[require('config.coc')]] }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', config = [[require('config.telescope')]] }
  use { 'preservim/nerdtree', config = [[require('config.nerdtree')]] }
  use { 'Shougo/denite.nvim', run = ':UpdateRemotePlugins', config = [[require('config.denite')]] }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-sensible'
  use { 'vim-airline/vim-airline', config = [[require('config.airline')]] }
  use 'vim-airline/vim-airline-themes'
  use 'Xuyuanp/nerdtree-git-plugin'
  
  -- nvim-bqf
  use { 'kevinhwang91/nvim-bqf', config = [[require('config.bqf')]] }
  -- optional
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  -- optional, highly recommended
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)

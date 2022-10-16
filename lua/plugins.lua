local opt = vim.opt
local cmd = vim.cmd
local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Your plugins go here
	
	-- Theme
  use 'rainglow/vim'

	--theme linea de modos
	use 'nvim-lualine/lualine.nvim'

	-- buscardor de archivos
	
	use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'
	use { 'ibhagwan/fzf-lua', 
   requires = { 'kyazdani42/nvim-web-devicons' }
 	}

	-- easy motion
	
	use 'easymotion/vim-easymotion'

	-- NerdTree
	use 'preservim/nerdtree'

	--icons
	use 'ryanoasis/vim-devicons'
	
	-- lspconfig necesita npm i -g typescript-language-server

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use 'hrsh7th/cmp-nvim-lsp'	
	use  'hrsh7th/cmp-buffer'	
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind.nvim'

--	use 'nvim-treesitter/nvim-treesitter'

	    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	if install_plugins then
    packer.sync()
  end

end)

if install_plugins then 
	return
end


cmd('colorscheme absent')


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
use 'sainnhe/everforest'


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
-- necestias tener el cliente tree-sitter-cli - googlealo.
-- si tenes un theme de mierda no te funciona 
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

		--auto tags - auto rename tags y close {}[]""
		use 'windwp/nvim-ts-autotag' 
		use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
--tabs
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}


--LSP SAGA -- defenitions preview - etc 
use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
					 server_filetype_map = {
   					 typescript = 'typescript'
  					}
        })
    end,
})

-- eslint + prettier
use 'dense-analysis/ale'

-- git signs --
use 'lewis6991/gitsigns.nvim'






	if install_plugins then
    packer.sync()
  end

end)

if install_plugins then 
	return
end


--cmd('colorscheme absent')
cmd('colorscheme everforest')
--vim.g.ale_linters = {'javascript':['eslint']} --tire error
 vim.g.ale_sign_error = '✘'
 vim.g.ale_sign_warning = '▲'

 vim.g.ale_fix_on_save = 1
--vim.b.ale_fixers =  ['eslint'] -- tira error
 

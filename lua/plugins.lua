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
  --use 'junegunn/fzf.vim'
	use { 'ibhagwan/fzf-lua',
 
   requires = { 'kyazdani42/nvim-web-devicons' }
  }
	-- easy motion
	
	use 'easymotion/vim-easymotion'

	if install_plugins then
    packer.sync()
  end

end)

if install_plugins then 
	return
end


cmd('colorscheme absent')

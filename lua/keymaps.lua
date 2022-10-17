-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap=true,silent=true}
local cmd = vim.cmd

-- turnoff arrows
map('','<up>','<nop>',{noremap=true})
map('','<down>','<nop>',{noremap=true})
map('','<left>','<nop>',{noremap=true})
map('','<right>','<nop>',{noremap=true})

--fzf
map('n','<C-f>','<cmd>Fzf files<cr>',{noremap=true}) -- fzf-lua
map('n','<Leader>f','<cmd>Rg<cr>',{noremap=true})

--git
map('n','<Leader>gc','<cmd>Fzf git_commits<cr>',{noremap=true}) --ver commits
map('n','<Leader>gs','<cmd>Fzf git_status<cr>',{noremap=true}) -- fzf-lua
map('n','<Leader>gb','<cmd>Fzf git_branches<cr>',{noremap=true}) -- fzf-lua


--otros
map('n','<Leader>b','<cmd>Fzf buffers<cr>',{noremap=true}) --ver buffers abiertos
map('n','<Leader>n','<cmd>NERDTree<cr>',{noremap=true}) --ver buffers abiertos

map('n','<Leader>s',':call feedkeys("\\<Plug>(easymotion-s)")<CR>',{noremap=true})

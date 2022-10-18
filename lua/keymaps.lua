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


--LSP SAGA 
map('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', {noremap=true})
map('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', {noremap=true}) -- te dice que hace una funcion nativa
map('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', {noremap=true}) -- te muestra donde se usa la funcion y su definicion
map('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', {noremap=true}) -- no anda
map('n', 'gd', '<Cmd>Lspsaga peek_definition<CR>', {noremap=true}) -- ves la definicion en un modal y podes editar o split
map('n', 'gr', '<Cmd>Lspsaga rename<CR>', {noremap=true}) -- rename funcion xd 

--prettierrc + eslintrc with ale 
map('n','<F8>','<Cmd>ALEFix eslint<CR>',{noremap=true})

-- resize window
map('n','<Leader>8','<Cmd>:vertical resize 80<Cr>',{noremap=true})

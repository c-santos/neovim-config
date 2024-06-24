local noremap = function (mode, keys, cmd)
   vim.keymap.set(mode, keys, cmd) 
end

vim.g.mapleader = " "

noremap("n", "<leader>pv", ":Ex<CR>")
noremap("v", "J", ":m '>+1<CR>gv=gv")
noremap("v", "K", ":m '<-2<CR>gv=gv")
noremap("n", "n", "nzzzv")
noremap("n", "N", "Nzzzv")
noremap("x", "<leader>p", "\"_dP")
noremap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>') -- clear matches Ctrl+b

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

nmap("<UP>", "<NOP>")
nmap("<Down>", "<NOP>")
nmap("<Left>", "<NOP>")
nmap("<Right>", "<NOP>")

vim.cmd "set runtimepath^=/usr/share/vim/vimfiles"
tmap("<Esc>", "<C-\\><C-n>")
vim.g.mapleader = ","
-- Replace/change selected string with another string
vmap("<leader>r", [[ "hy:%s/<C-r>h/<C-r>h/gc<left><left><left> ]])

nmap("th", ":tabfirst<CR>")
nmap("tk", ":tabnext<CR>")
nmap("tj", ":tabprev<CR>")
nmap("tl", ":tablast<CR>")
nmap("tn", ":tabnext<CR>")
nmap("tm", ":tabm<CR>")
nmap("td", ":tabclose<CR>")

vim.g.ale_disable_lsp = 1

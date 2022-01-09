vim.cmd([[
  nmap     <leader>f <Plug>CtrlSFPrompt
  vmap     <leader>f <Plug>CtrlSFVwordPath
  vmap     <leader>F <Plug>CtrlSFVwordExec
  nmap     <leader>n <Plug>CtrlSFCwordPath
  nmap     <leader>p <Plug>CtrlSFPwordPath
  nnoremap <leader>o :CtrlSFOpen<CR>
  nnoremap <leader>t :CtrlSFToggle<CR>
  inoremap <leader>t <Esc>:CtrlSFToggle<CR>
  let g:ctrlsf_follow_symlinks = 0
]])

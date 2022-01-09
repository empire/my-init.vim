vim.cmd([[
  nnoremap <leader>ss :SSave<CR>
  nnoremap <leader>sc :SClose<CR>
  nnoremap <leader>sl :SLoad<SPACE>
  
  " 'Most Recent Files' number
  let g:startify_files_number           = 18
  
  " Update session automatically as you exit vim
  let g:startify_session_persistence    = 1
  
  let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
  
  let g:startify_session_before_save = [
      \ 'echo "Cleaning up before saving.."',
      \ 'silent! NERDTreeClose'
          \ ]
  
""   let NERDTreeHijackNetrw = 0
]])

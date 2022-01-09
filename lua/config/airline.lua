-- TODO un-comment the following comments
-- -- Update section z to just have line number
-- vim.g.airline_section_z = vim.g["airline#section#create"](['linenr'])
--  
-- -- Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
-- vim.g["airline#extensions#tabline#formatter"] = 'unique_tail'
--   
-- -- Custom setup that removes filetype/whitespace from default vim airline bar
-- vim.g["airline#extensions#default#layout"] = {{'a', 'b', 'c'}, {'x', 'z', 'warning', 'error'}}
--   
-- -- Don't show git changes to current file in airline
-- -- let g:airline#extensions#hunks#enabled=0

vim.cmd([[
  " Enable extensions
  "let g:airline_extensions = ['branch', 'hunks', 'coc']
  let g:airline_extensions = ['branch', 'coc']
  
  
  " Do not draw separators for empty sections (only for the active window) >
  let g:airline_skip_empty_sections = 1
   
  " Customize vim airline per filetype
  " 'nerdtree'  - Hide nerdtree status line
  " 'list'      - Only show file type plus current line number out of total
  let g:airline_filetype_overrides = {
    \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', ''), '' ],
    \ 'list': [ '%y', '%l/%L'],
    \ }
  
  " Enable powerline fonts
  let g:airline_powerline_fonts = 1
  
  " Enable caching of syntax highlighting groups
  let g:airline_highlighting_cache = 1
  
  " Define custom airline symbols
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
]])

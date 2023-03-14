"let g:lightline = {
      "\ 'colorscheme': 'one',
      "\ }


" coc-omnisharp cannot jump to Microsoft Packages definitions so we use
" omnisharp-vim
autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>

" enabling standard mappings for vimspector
let g:vimspector_enable_mappings = 'HUMAN'

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction


autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
autocmd FileType text let b:coc_suggest_disable = 1

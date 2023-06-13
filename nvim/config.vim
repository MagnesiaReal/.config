" configs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent

set clipboard=unnamedplus " copy to system clipboard
set nowrap " no next line if is lage

" for cursor stop scroll
set scrolloff=8

" set number
set nu rnu

set termguicolors

" for commenter 
filetype plugin on

" Folding Save NOTE. that works for remember text pos
augroup AutoSaveFolds
  autocmd!
  au BufWinLeave ?* mkview 
  au BufWinEnter ?* silent! loadview
augroup END


" Enable HTML
set omnifunc=htmlcomplete#CompleteTags

" enable coc explorer instead netrw-explorer
function! s:DisableFileExplorer()
    au! FileExplorer
endfunction

function! s:OpenDirHere(dir)
    if isdirectory(a:dir)
  exec "silent CocCommand explorer " . a:dir
    endif
endfunction

" Taken from vim-easytree plugin, and changed to use coc-explorer
augroup CocExplorerDefault
    autocmd VimEnter * call <SID>DisableFileExplorer()
    autocmd BufEnter * call <SID>OpenDirHere(expand('<amatch>'))
augroup end

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

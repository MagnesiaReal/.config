call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Plug for navigator on nvim
Plug 'rafi/awesome-vim-colorschemes'  " Plug for theme colors schemes
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Plug for support languages autocomplete
Plug 'preservim/nerdcommenter'  "Plug for Comment multi line 

" For searching files and words on files
Plug 'nvim-lua/plenary.nvim'  " Plug for Telescope searcher
Plug 'nvim-telescope/telescope.nvim' "Plug for smart fetch file
Plug 'startup-nvim/startup.nvim' " Plug for starup menu if empty file

"the lightline bellow the terminal, usefull to see position, decode file and
"many other things
Plug 'itchyny/lightline.vim' " Plug status bar but is better barline lightline
Plug 'josa42/vim-lightline-coc' "For display Coc diagnostics on lighline 


Plug 'neovim/nvim.net'  " Plug for .NET
Plug 'OmniSharp/omnisharp-vim' " Plug for .NET C#
Plug 'puremourning/vimspector' " Plug for Debugging program


Plug 'tpope/vim-dadbod' " Plug install for SQl need coc-db
Plug 'kristijanhusak/vim-dadbod-ui' "Plug for ui sql


Plug 'terryma/vim-multiple-cursors' " Plug for Multiople cursors
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'seblj/nvim-tabline'
Plug 'ahonn/resize.vim'
Plug 'lukas-reineke/indent-blankline.nvim' " pretty indent line

Plug 'petertriho/nvim-scrollbar' " scrollbar requires hlslens for display in scroll bar searched words
Plug 'kevinhwang91/nvim-hlslens' " For search  words with # and navigate into coincidences

Plug 'sheerun/vim-polyglot' " may better than treesitter
Plug 'psliwka/vim-smoothie' " smoothie scroll
Plug 'ghifarit53/tokyonight-vim' " color scheme


"Default plugs
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

call plug#end()

set mouse=a

let g:lightline = {
  \ 'colorscheme': 'one',
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark', 'git', 'diagnostic', 'filename', 'method' ],
  \     [ 'coc_status', 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \     [ 'status_line', 'status', 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'status': 'LightlineGitStatus',
  \   'status_line': 'LightlineGitStatusLine'
  \ },
  \ 'enable': {
  \   'tabline': 0
  \ }
\ }

call lightline#coc#register()


function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

function! LightlineGitStatus() abort
  let status = get(g:, 'coc_git_status', '')
  " return blame
  return winwidth(0) > 120 ? status : ''
endfunction

function! LightlineGitStatusLine() abort
  let status = get(b:, 'coc_git_status', '')
  " return blame
  return winwidth(0) > 120 ? status : ''
endfunction

autocmd User CocGitStatusChange {command}

source ~/.config/nvim/custom-confs.vim
source ~/.config/nvim/coc-config.vim
source ~/.config/nvim/awesome-config.vim
source ~/.config/nvim/git-config.vim
source ~/.config/nvim/telescope-config.vim
source ~/.config/nvim/treesitter-config.vim
source ~/.config/nvim/vim-multiple-cursors-config.vim
source ~/.config/nvim/startup.vim
source ~/.config/nvim/tabline.vim
source ~/.config/nvim/resize.vim
source ~/.config/nvim/indent-blankline.vim
source ~/.config/nvim/scrollbar.vim
source ~/.config/nvim/nvim-hlslens.vim
source ~/.config/nvim/vim-polyglot.vim
source ~/.config/nvim/config.vim

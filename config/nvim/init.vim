syntax enable
set tw=0
set relativenumber
set number
set spell
set noshowmode
set cursorline
set cursorcolumn
set mouse=
set nowrap
set nocompatible
set background=dark
set termguicolors
set scrolloff=5
set hidden
set shiftwidth=4
"set foldmethod=syntax
let &t_ut=''
let NERDTreeQuitOnOpen=1
let g:hexmode_patterns = '*.bin,*.exe,*.dat,*.o,*.out'
set completeopt=longest,menuone
filetype plugin indent on
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/commands.vim
:lua require('org-mode')

colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'separator': {'left': "\ue0b0", 'right': "\ue0b2"},
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"},
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
let g:rainbow_active = 1

set tw=0

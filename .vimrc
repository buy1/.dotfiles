call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plugin 'christoomey/vim-system-copy'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/mbbill/undotree.git'
call plug#end()
"" Color Themes

syntax enable
if (has("termguicolors"))
    set termguicolors
endif
colorscheme onedark
set hlsearch

""set cursorline
"""hi CursorLine gui=underline cterm=underline
" Enable CursorLine
highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
set number
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set tabstop=4
"set softtabstop=0
set expandtab 
set shiftwidth=4 
"set smarttab
""set colorcolumn=72
""set cursorcolumn               
filetype plugin on
""set cursorline                

nmap <C-P> :NERDTreeToggle<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tn  :tabnew<CR>
nnoremap<leader-u> :UndotreeToggle<cr>
" TAB in normal mode: quick fold toggling
nnoremap <tab> za

" Allows remembering of folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
"
" " TAB in visual mode: sort
vnoremap <tab> :sort<cr>
setlocal foldmethod=syntax
set nofoldenable
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
map <space> <leader>

set laststatus=2
set noshowmode
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set colorcolumn=72

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
highlight SpellBad term=reverse ctermbg=1

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitstatus': 'fugitive#statusline'
      \ },
      \ }

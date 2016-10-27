execute pathogen#infect()
syntax on
filetype plugin indent on

" colorscheme slate
colorscheme railscasts

" make tab size equal to 2 spaces
set wrap
set linebreak
" set nolist  " list disables linebreak
" limit lines 80 characters
set textwidth=80
set wrapmargin=0
set backspace=2

set guifont=Monaco:h30

" Indents and tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set formatoptions=croql
set expandtab

" No swp files
set noswapfile
set nobackup
set nowb

" cursorline
set cursorline
highlight CursorLine ctermbg=236 guibg=#32322f
" hi CursorLine cterm=NONE ctermbg=cyan ctermfg=white guibg=LightRed guifg=white

" syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Highlighting Errors
highlight SyntasticErrorSign guifg=white guibg=red
highlight SyntasticErrorLine guibg=#2f0000
highlight SyntasticError guibg=#2f0000

" Global Checkers for Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 3
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_jump = 2

" Config Vars for JavaScript.vim
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1


" Nerd_Tree Plugin
map <C-n> :NERDTreeToggle<CR>

"jj = esc
imap jj <ESC>

" airline 
let g:airline_powerline_fonts = 1
set laststatus=2

" show line numbers
set number

" change line number colors
highlight LineNr term=bold cterm=NONE ctermfg=30 guifg=LightRed

" highlight search terms
set hlsearch

" allow search matches while typing
set incsearch

let mapleader = ','
set mouse=a                 " Automatically enable mouse usage
" Copy/paste
set clipboard+=unnamedplus
"Dont create ~ files
set nobackup

"Dont create swap files
set noswapfile

"Easy opening of directories
" From:
" http://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

"Use Space/Shift-Tab key to switch between tabs
nmap <space> gt
nmap <S-Tab> gT

set history=1000                    " Store a ton of history (default is 20)
"set spell                           " Spell checking on
set hidden                          " Allow buffer switching without saving

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set autoindent                  " Indent at the same level of the previous line

set smartindent                 " Use code indenting style for auto indent
set tabstop=3                   " An indentation every three columns

autocmd FileType * setlocal expandtab shiftwidth=3 softtabstop=3
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType json setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType make setlocal noexpandtab
autocmd FileType go setlocal noexpandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cycle thru relativenumber + number, number (only) and no numbering 
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

nnoremap <silent> <Leader>R :call Cycle_numbering()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

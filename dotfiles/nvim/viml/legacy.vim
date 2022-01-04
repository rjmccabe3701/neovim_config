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
"nmap <space> gt "This inteferes with telescope shortcuts
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

"from http://vimawesome.com/plugin/easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
""""""""""""""""""""""""

"Use Escape to exit terminal "insert" mode
tnoremap <Esc> <C-\><C-n>
"Send Esc to terminal
tnoremap <C-v><Esc> <Esc>

"The Mozilla style is a pretty sane fallback if .clang-format
" DNE in the working dir
let g:clang_format_fallback_style = 'Google'
vmap <C-Y> :py3f ~/.vim/clang-format.py<cr>

"Universal reformatting (uses the vim-autoformat plugin), will
" call into clang-format for C/C++, autopep8 for python, etc.
vmap <C-U> :Autoformat<CR>

"Recursive git grep
function! Ggrepr(myargs)
   echo a:myargs
   exe 'Ggrep --recurse-submodules' a:myargs
   " exe 'echo a:myargs'
endfunction
" com -nargs=1 Ggrepr call Ggrepr(<args>)
com -nargs=1 Ggrepr call Ggrepr(<f-args>)
" command! Ggrepr call Ggrepr(<args>)

"Shortcut to "git grep" and "git grep --recurse-submodules
nmap <C-\>\ :Ggrep <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>r :Ggrepr <C-R>=expand("<cword>")<CR><CR>

set textwidth=110

colorscheme gruvbox

"Block comment code in C/C++
autocmd FileType cpp,c let b:surround_45 = "#if 0\n\r\n#endif\n"

"Code block for markdown
autocmd FileType markdown let b:surround_45 = "```\n\r\n```"

"Block comment for python
autocmd FileType python let b:surround_45 = "\"\"\"\n\r\n\"\"\""

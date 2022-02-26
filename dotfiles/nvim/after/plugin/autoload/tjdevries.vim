"Stuff stolen from
"https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/plugin/keymaps.vim

" Move line(s) up and down
" Doesn't work in iterm :(
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv


" Random number into vim
inoremap <leader>nr <c-o>:py3 import vim, random; vim.current.line += str(random.randint(0,9))<CR><esc>A


" Switch between tabs
nnoremap <Right> gt
nnoremap <Left>  gT


if !exists('*tjdevries#save_and_exec')
  function! tjdevries#save_and_exec() abort
    if &filetype == 'vim'
      :silent! write
      :source %
    elseif &filetype == 'lua'
      :silent! write
      :luafile %
    endif

    return
  endfunction
endif

echo "sp"

" Execute this file
nnoremap <leader><leader>x :call tjdevries#save_and_exec()<CR>

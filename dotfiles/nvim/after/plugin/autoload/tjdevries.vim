"Stuff stolen from
"https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/plugin/keymaps.vim

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

" Execute this file
nnoremap <leader><leader>x :call tjdevries#save_and_exec()<CR>

function! smarthl#enter(expr) abort
  augroup smarthl_enter
    autocmd! *
    autocmd CursorMoved *
          \ call s:leave() |
          \ augroup smarthl_enter |
          \   autocmd! |
          \ augroup END
  augroup END
  return a:expr
endfunction


function! s:leave() abort
  augroup smarthl_leave
    autocmd!
    autocmd CursorMoved,InsertEnter,WinLeave *
          \ set nohlsearch |
          \ augroup smarthl_leave |
          \   autocmd! |
          \ augroup END
  augroup END
  set hlsearch
endfunction

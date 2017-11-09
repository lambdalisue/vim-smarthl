if exists('g:smarthl_loaded')
  finish
endif
let g:smarthl_loaded = 1

nnoremap <expr> <Plug>(smarthl-/) smarthl#enter('/')
nnoremap <expr> <Plug>(smarthl-?) smarthl#enter('?')
nnoremap <expr> <Plug>(smarthl-*) smarthl#enter('*')
nnoremap <expr> <Plug>(smarthl-#) smarthl#enter('#')
nnoremap <expr> <Plug>(smarthl-n) smarthl#enter('n')
nnoremap <expr> <Plug>(smarthl-N) smarthl#enter('N')
nnoremap <expr> <Plug>(smarthl-g/) smarthl#enter('g/')
nnoremap <expr> <Plug>(smarthl-g?) smarthl#enter('g?')
nnoremap <expr> <Plug>(smarthl-g*) smarthl#enter('g*')
nnoremap <expr> <Plug>(smarthl-g#) smarthl#enter('g#')

if get(g:, 'smarthl_default_mappings', 1)
  nmap / <Plug>(smarthl-/)
  nmap ? <Plug>(smarthl-?)
  nmap * <Plug>(smarthl-*)
  nmap # <Plug>(smarthl-#)
  nmap n <Plug>(smarthl-n)
  nmap N <Plug>(smarthl-N)
  nmap g/ <Plug>(smarthl-g/)
  nmap g? <Plug>(smarthl-g?)
  nmap g* <Plug>(smarthl-g*)
  nmap g# <Plug>(smarthl-g#)
endif

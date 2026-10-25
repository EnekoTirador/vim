" ── plugins/emmet.vim ── abreviaturas HTML/CSS (! + Tab, ul>li*3 + Tab...) ─────
Plug 'mattn/emmet-vim'

let g:user_emmet_install_global = 0     " no activarlo en todos los archivos

" Tab: expande la abreviatura si la hay; si no, hace una Tab normal (sangría)
function! s:emmet_buffer() abort
  silent! EmmetInstall
  imap <buffer><silent><expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")
endfunction

augroup MyEmmet
  autocmd!
  autocmd FileType html,css,scss,xml,markdown call s:emmet_buffer()
augroup END

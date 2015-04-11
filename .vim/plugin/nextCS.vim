" ============================================================================
" File:        nextCS.vim
" Description: vim color theme selector
" Maintainer:  Javier Lopez <m@javier.io>
" License:     WTFPL -- look it up.
" ============================================================================

" Init {{{1
if exists("loaded_nextCS") || exists('loaded_setcolors')
    finish
endif

let loaded_nextCS = 1

let s:save_cpo = &cpo
set cpo&vim

" Default configuration {{{1
if !exists('g:nextcs_dir')
  let g:nextcs_dir= 'colors/'
endif

if !exists('g:nextcs_map')
  let g:nextcs_map= '<F12>'
endif

if !exists('g:previouscs_map')
  let g:previouscs_map= '<F11>'
endif

" Commands & Mappings {{{1
command! NextCS     call nextCS#Next()
command! PreviousCS call nextCS#Previous()

exe "nnoremap <silent>" g:nextcs_map     ":NextCS<CR>"
exe "nnoremap <silent>" g:previouscs_map ":PreviousCS<CR>"

let &cpo = s:save_cpo

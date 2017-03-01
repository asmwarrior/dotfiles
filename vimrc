set number
set mouse=a
syntax on
set ts=2
set softtabstop=2
set expandtab
set shiftwidth=2
au FileType Makefile set noexpandtab
au BufNewFile *.rb 0r ~/.default.rb
au BufNewFile *.py 0r ~/.default.py
set ruler
set backspace=2
set ic
set ru
set hlsearch
set incsearch
set cursorline
set smartcase
colorscheme ron

"--------------------------------------------------------------------
" Colors {{{
highlight Folded ctermfg=243 ctermbg=234 guifg=Cyan guibg=DarkGrey
highlight FoldColumn ctermbg=234 guifg=Cyan guibg=Grey
" Custom auto-complete menu colors
highlight PmenuSel ctermfg=white ctermbg=20
highlight Pmenu ctermfg=252 ctermbg=17
highlight Normal ctermbg=none
highlight ColorColumn ctermbg=53
" }}}


" Status line {{{
highlight StatusLine cterm=none ctermbg=235
highlight StatusLineNC cterm=none ctermbg=233
highlight Status1C ctermfg=blue ctermbg=235
highlight Status2C ctermfg=red ctermbg=235
highlight Status3C ctermfg=yellow ctermbg=235
highlight Status4C ctermfg=green ctermbg=235
highlight Status1NC ctermfg=darkgray ctermbg=233
highlight Status2NC ctermfg=124 ctermbg=233
highlight Status3NC ctermfg=100 ctermbg=233
highlight Status4NC ctermfg=70 ctermbg=233
set laststatus=2
function! SetHighlight(nr)
  for i in [1,2,3,4]
    if (winnr() == a:nr)
      exec 'highlight! link Status'.i.' Status'.i.'C'
    else
      exec 'highlight! link Status'.i.' Status'.i.'NC'
    endif
  endfor
  return ''
endfunction
function! BuildStatusLine(nr)
  return '%{SetHighlight(' . a:nr . ')}' .
        \ '%=%#Status1#%F %#Status2#[%{&encoding}/%{&fileformat}/%Y]%#Status3# %l,%c %#Status4#%4P '
endfunction
set statusline=%!BuildStatusLine(winnr())
" }}}

set t_Co=256
set autoread
set showmatch
set showmode
set nobackup
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
nmap <leader>p :set paste!<BAR>set paste?<CR>

vmap <Tab> >
vmap <S-Tab> <

" 0 is sooo much easier to type than ^, and ^ is more useful.
nnoremap 0 ^
nnoremap ^ 0
vnoremap 0 ^
vnoremap ^ 0

imap jk <esc>


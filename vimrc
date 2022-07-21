if $TERM == "xterm-256color"
  set t_Co=256
endif

"if has("termguicolors")
"  set termguicolors
"  if &t_8f == ''
"    " The first characters after the equals sign are literal escape characters.
"    set t_8f=[38;2;%lu;%lu;%lum
"    set t_8b=[48;2;%lu;%lu;%lum
"  endif
"endif

color atom-dark-256
"color atom-dark
"color molokai
"color nord
"color OceanicNext
"color one
"color PaperColor
"color tender

set autoindent
set visualbell

" Default indent is 4 spaces.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" File specific indents.
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

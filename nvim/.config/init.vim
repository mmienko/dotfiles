" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Color Scheme
syntax enable
set background=dark
colorscheme gruvbox

let g:airline_theme='gruvbox'
let g:gruvbox_contrast='soft'
let g:gruvbox_hls_cursor='blue'
let g:gruvbox_color_column='red'

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Line numbering
"	Taken from: https://jeffkreeftmeijer.com/vim-number/ 
"	both absolute and relative line numbers are enabled by default, which produces “hybrid” line numbers. 
"	When entering insert mode, relative line numbers are turned off, leaving absolute line numbers turned on. 
"	This also happens when the buffer loses focus, so you can glance back at it to see which absolute line 
"	you were working on, if you need to.
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

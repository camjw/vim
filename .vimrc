"language agnostic settings 
autocmd Filetype gitcommit setlocal spell textwidth=72
set autowrite
:nnoremap <space> dd
set number


"persistent undo
set undofile               
set undodir=$HOME/.vim/undo 
set undolevels=1000         
set undoreload=10000         


"Go settings
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'fatih/molokai'
call plug#end()

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai


map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>B  <Plug>(go-build)
autocmd FileType go nmap <leader>R  <Plug>(go-run)

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1 

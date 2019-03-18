"language agnostic settings 
autocmd Filetype gitcommit setlocal spell textwidth=72
set autowrite
:nnoremap <space> dd

"Go settings
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>B  <Plug>(go-build)
autocmd FileType go nmap <leader>R  <Plug>(go-run)



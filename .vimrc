call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

autocmd Filetype gitcommit setlocal spell textwidth=72
set autowrite



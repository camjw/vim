"Cameron's Vim setings

"language agnostic settings
execute pathogen#infect()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
colo molokai
set encoding=utf-8
set fileencoding=utf-8
autocmd Filetype gitcommit setlocal spell textwidth=72
set autowrite
:nnoremap <space> dd
set number
set wildmenu

"NERDTree settings
autocmd StdinReadPre * let s:std_in=1
:nnoremap <C-g> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"""Start NERBTree up by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"NERDCommenter settings 
let g:NERDSpaceDelims = 1

"persistent undo
set undofile               
set undodir=$HOME/.vim/undo 
set undolevels=1000         
set undoreload=10000         

"Go settings
let g:rehash256 = 1
let g:molokai_original = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
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

"Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"eslint runs after every write
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

"Python settings
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"C++ settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_templat_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
"

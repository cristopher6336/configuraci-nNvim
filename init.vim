"Como crear, cerrar, cambiar ventanas en nvim
"para hacer esto tenemos que usar la tecla Ctrl+w v para vertical
"
"para hacer ventanas horizontalmente Ctrl+w s
"
"pero si quieres por comandos, utilizas el comando :sp para vertical y :vs
"para horizontalmente
"
"
"para cerrar ventana, puedes usar el comando :close y de tecla es
"Ctrl+w c
"
"
"para moverte entre ventanas tiene que hacer el comando ctrl+w 
"
"derecha = ctrl+w l
"izquierda = ctrl+w h
"arriba = ctrl+w k
"abajo = ctrl+w j
"



set number

nnoremap <F3> :UndotreeToggle<CR>
nnoremap <F2> :NEERDTree<CR>
nnoremap <F4> :Unite file<CR>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline-themes'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'godlygeek/tabular'

" para usar unite, es un bucador de archivos parecido a nerdtree, sirve para
" no crear tanto espacio en codigo, para usar se usan comando, biien para usar
" tenemos que escribir el comando :Unite file para mostrarte la tabla de
" archivos o moverte a ese archivo sin usar nerdtree, tambien tenemos el comadando :Unite buffer, para mostrar el nombre
" del archivo y la fecha de creacion
Plug 'shougo/unite.vim'

Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif



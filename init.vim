"Como crear, cerrar, cambiar ventanas en nvim
"para hacer esto tenemos que usar la tecla Ctrl+w v para vertical
"
"para hacer ventanas horizontalmente Ctrl+w s
"
"pero si quieres por comandos, utilizas el comando :sp para vertical y :vs
"para horizontalmente
"
"
"
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
set encoding=UTF-8
set relativenumber
set numberwidth=1
set showcmd
set ruler 
set cursorline
set showmatch
set sw=2

syntax on

nnoremap <F3> :UndotreeToggle<CR>
nnoremap <F2> :NERDTree<CR>
nnoremap <F4> :Unite file<CR>

" Specify a directory for plugins
" - For Netchovim: stdpath('data') . '/plugged'
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

Plug 'ryanoasis/vim-devicons'

Plug 'flazz/vim-colorschemes'

Plug 'joshdick/onedark.vim'

Plug 'morhetz/gruvbox'

Plug 'mxw/vim-jsx'

Plug 'morhetz/gruvbox'

Plug 'othree/javascript-libraries-syntax.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'mattn/emmet-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'


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

colorscheme gruvbox

"configuración de javascript como react, vue, etc.
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0


let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


"█╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    
"---------------------------------vim config---------------------------- 
syntax on 
set number 
set numberwidth=3
set mouse=a
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set cursorline
set encoding=utf-8

"Tabs"
set shiftwidth=4
set tabstop=4

"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line 
xnoremap K :move '<-2<CR>gv-gv 
xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------
let mapleader = " "

"Get out of insert mode 
"Salir de modo insertar
inoremap ii <Esc>

"save file
"guardar archivo
nmap <leader>w :w <CR>

"cerrar ventana
"close current  window
nmap <leader>e :q<CR>

"cerrar un archivo 
nmap <leader>s :bd<CR>

"pasar a la siguiente ventana abierta
nmap <leader>yy :bn<CR>
nmap <leader>tt :bp<CR>
"nmap <leader>q :q <CR>
"nmap <leader>so :so%<CR>

"poner al punto y coma al final de cada linea
nnoremap <Leader>; $a;<Esc>

"comentar las lineas de codigo
nnoremap <leader>c<space> <Plug>NERDComToggleComment

"fast scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

"search commands 
"comandos de busqueda
"nmap <leader>gs  :CocSearch
"nmap <leader>fs :FZF<CR>
"nmap <leader>rg :Rg<CR>

"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'

"abrir Nerdtree
"open nerdtree
nmap <leader>qq :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>b <Plug>(easymotion-s2)

"navegar entre las definiciones del codigo 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
"nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
"nnoremap <silent> <S-TAB> :bprevious<CR>


"--Themes config--
set termguicolors

"--------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'


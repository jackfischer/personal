"Jack

"Key controls
nmap s :w <enter>
nmap q :q <enter> 
imap <Tab> <C-P>
map j gj
map k gk
command W w
command Q q
noremap <C-n> :NERDTreeToggle<CR> "NERDTree toggle

"Basics
set cursorline "highlight current line of cursor
"hi CursorLine ctermbg=darkgray "8 = dark gray, 15 = white
"hi Cursor ctermbg=15 ctermfg=8
set colorcolumn=80 "highlight the column to break by
highlight ColorColumn ctermbg=black "color
set exrc "use directory specific vimrc if there
set notimeout "waiting for keys
set ttimeout "waiting for keys
set timeoutlen=50 "wait time for combos
set smartindent "smart auto indenting
set tabstop=3 "tabs = 4 spaces
set scrolloff=10 "keep 10 lines visible at top and bottom when scrolling
set shiftwidth=3 "spaces for each level of autoindent
set expandtab "use the above #spaces to insert a tab
set ttyfast "assume terminal is fast, improves visuals
set nocompatible "disable ancient compatibility, better overall
set noswapfile "chris advice. no annoying swapfile on disk; pure in memory
set nobackup "no backup when overwriting a file
filetype off "required for vundle
set wrap "wrap long lines
syntax on "syntax highlighting automatically
set undofile "save your undos on disk and always have them!
set undodir=$HOME/.vim/undo "will be saved here
set laststatus=2 "always have status bar
set ai "copy indent from current line when starting a new line
set number "line numbers
set hlsearch "highlight search matches previous search pattern
set ignorecase "ignore case in searches
set smartcase "override ignore case if the search has Captials
set showcmd "show the command in progress on last line of screen
set hidden "keep unloaded buffers?
set guioptions=aegimt
set guifont=PragmataPro:h15
set incsearch "show search results as you type
set t_co=256
set showmatch "when bracket inserted, briefly jump to matching one if visible
set autochdir "auto change the folder when you change files
set ruler
autocmd FileType c,objc,cpp set commentstring=//\ %s "c comments
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set rtp+=~/.vim/bundle/vim-airline/vim-airline/bindings/vim "airline

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion=1

"Vundle
set rtp+=~/.vim/bundle/vundle/
"MUST CHANGE ON SOME SITUATIONS^

call vundle#begin()
Plugin 'gmarik/vundle' "vundle
Plugin 'chriskempson/base16-vim' "color schemes
Plugin 'bling/vim-airline.git' "airline
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} "writing html, sick
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex' "latex
Plugin 'tpope/vim-surround' "pair plugin, brackets etc
Plugin 'tpope/vim-commentary' "comment stuff out
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'Syntastic' "syntax checking
Plugin 'scrooloose/nerdtree' "file browser
Plugin 'Valloric/YouCompleteMe' "autocomplete
call vundle#end() 

filetype plugin indent on 
set autoread "if file changed outside of vim, just read it again
set guifont=PragmataPro\ for\ Powerline:h16 "Font for Macvim


"copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
vmap <C-v> <C-r><C-o>+


"Chris Theme
"set t_co=256
"Bundle 'chriskempson/base16-vim'
"set background=dark
"colorscheme base16-monokai
"
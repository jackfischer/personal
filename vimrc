scriptencoding utf-8
set encoding=utf-8

"Basics
set nocompatible
set ttyfast
syntax on
set cursorline "highlight current line of cursor
"hi CursorLine ctermbg=darkgray "8 = dark gray, 15 = white
"hi Cursor ctermbg=15 ctermfg=8
set colorcolumn=80 "highlight the column to break by
highlight ColorColumn ctermbg=black "color
set exrc "use directory specific vimrc if there
set notimeout "waiting for keys
set ttimeout "waiting for keys
set timeoutlen=50 "wait time for combos
set virtualedit=block "allow cursor to go anywhere in visual block mode
set smartindent "smart auto indenting
set tabstop=4 "tabs = 4 spaces
set scrolloff=10 "keep 10 lines visible at top and bottom when scrolling
set shiftwidth=4 "spaces for each level of autoindent
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
set guifont=PragmataPro:h16
set incsearch "show search results as you type
set t_co=256
set showmatch "when bracket inserted, briefly jump to matching one if visible
set autochdir "auto change the folder when you change files
set mouse=a "mouse enabled just in case
set clipboard=unnamed "copy paste with the system clipboard
set ruler
set lazyredraw
set list
"set listchars=tab:┊\ ,trail:·,precedes:<,extends:>,nbsp:␠ "itai ideal
set listchars=tab:┊\ ,precedes:<,extends:>,nbsp:␠
set completeopt=menu,menuone,longest
set backspace=indent,eol,start
augroup CommentStrings
    autocmd!
    autocmd FileType c,objc,cpp set commentstring=//\ %s "c comments
augroup END

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let NERDTreeQuitOnOpen=1
set rtp+=~/.vim/bundle/vim-airline/vim-airline/bindings/vim "airline
"YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion=1
set whichwrap=<,>,[,],h,l "allow h and l to wrap cursor around to prev/next line

"Vundle
set rtp+=~/.vim/bundle/vundle/
"MUST CHANGE ON SOME SITUATIONS^

call vundle#begin()
Plugin 'gmarik/vundle' "vundle
Plugin 'chriskempson/base16-vim' "color schemes
Plugin 'bling/vim-airline.git' "airline
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex' "latex
Plugin 'tpope/vim-surround' "pair plugin, brackets etc
Plugin 'tpope/vim-commentary' "comment stuff out
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'Syntastic' "syntax checking
Plugin 'scrooloose/nerdtree' "file browser
Plugin 'Valloric/YouCompleteMe' "autocomplete
Plugin 'pangloss/vim-javascript' "better js indentation/highlighting
Plugin 'marijnh/tern_for_vim' "js autocomplete, also needs an npm install
Plugin 'vim-ruby/vim-ruby' "better ruby support (esp autocomp)
Plugin 'toyamarinyon/vim-swift' "swift highlighting
Plugin 'Shougo/vimproc' "support for phpcomplete. requires a 'make'
Plugin 'Shougo/unite.vim' "support for phpcomplete
"Plugin 'm2mdas/phpcomplete-extended' "php autocompletion
"Plugin 'StanAngeloff/php.vim' " better php..
Plugin 'shawncplus/phpcomplete.vim'
call vundle#end() 

augroup Completion
    autocmd!
    autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
augroup END


filetype plugin indent on 
filetype on
set autoread "if file changed outside of vim, just read it again
"set guifont=PragmataPro\ for\ Powerline:h16 "Font for Macvim
au FileType python set softtabstop=2 | set shiftwidth=2
au FileType ruby set tabstop=2 | set shiftwidth=2
au FileType javascript setl sw=2 sts=2 et

"Key controls
nmap q :q <enter> 
imap <Tab> <C-P>
map j gj
map k gk
command W w
command Q q
noremap <C-n> :NERDTreeToggle<CR>

"emacs/osx style motion
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

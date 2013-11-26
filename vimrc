" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set clipboard=unnamedplus
"toggle auto indent while pasting code from external application
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set timeoutlen=3000

nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

"set color scheme
":highlight Normal ctermfg=black ctermbg=white

"map f6 and f7 to switch between tabs
:map <F6> :tabprev<CR>
:map <F7> :tabn<CR>


"map f2 for nerdtree file browser
map <F2> :NERDTreeToggle<CR>

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

let g:pep8_map='<F5>' 
"let g:pymode_rope = 0 
set foldmethod=indent
set foldlevel=99

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"referenced from 'http://unlogic.co.uk/posts/vim-python-ide.html'
"set nocompatible

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" let Vundle manage Vundle
" " required!
" Bundle 'gmarik/vundle'
"
" " The bundles you install will be listed here
"Bundle 'scrooloose/nerdtree'
"Bundle 'klen/python-mode'
"
" filetype plugin indent on

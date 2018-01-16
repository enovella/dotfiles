" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

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
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase	" Do smart case matching
set incsearch	" Incremental search
set autowrite	" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"""
" User Interface Options
"""
set cursorline   "Highlight the line currently under cursor.
set number       "Show line niumbers on the sidebar.
set showcmd      "Show command in bottom bar
"set relativenumber "Show line number on the current line and relative numbers on all other lines.
set visualbell   "Use visual bell instead of beeping when doing something wrong
set ruler        "Always show cursor position
set laststatus=2 "Always display the status bar

" use relative line number by default
" if exists('+relativenumber')
"   set relativenumber
"   endif


" Text rendering
set display+=lastline " Always try to show a paragraph’s last line.
set encoding=utf-8    " Use an encoding that supports unicode.
set linebreak         " Avoid wrapping a line in the middle of a word.
set scrolloff=1       " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5   " The number of screen columns to keep to the left and right of the cursor.
set wrap              " Enable line wrapping.

" Performance Options
set complete-=i   " Limit the files searched for auto-completes.
set lazyredraw    " Dont update screen during macro and script execution.

" Indention options
set autoindent          "New lines inherit the indentation of previous lines.
set expandtab           "Convert tabs to spaces.
set shiftround          "When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4        "When shifting, indent using four spaces.
set smarttab            "Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4           "Indent using four spaces.
set softtabstop=4       "number of spaces in tab when editing

" Coding-wise
set showmatch           " highlight matching [{()}]


set title               " Show the filename in the window title bar
set report=0            " Show all changes
set showmode            " Show the current mode

""" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set gdefault            " RegExp global by default
set magic               " Enable extended regexes.

set spelllang=en_us
"set spell               " Enable spellchecking


" --- history / file handling ---
set history=999             " Increase history (default = 20)
set undolevels=999          " Moar undo (default=100)
set autoread                " reload files if changed externally


" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"command codify source $VIMRUNTIME/syntax/c.vim

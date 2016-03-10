" Setting up Vundle - the vim plugin bundler
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
echo "Installing Vundle.."
echo ""
silent !mkdir -p ~/.vim/bundle
silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

source ~/.vim/bundles.vim

filetype plugin on

" color scheme
colorscheme wuye

" General Settings
syntax on " Syntax lighting
set mouse=a " mouse usage for all modes
set encoding=utf-8 " File encoding
set nocompatible " Disable vi-compatibility mode
set backspace=indent,eol,start " More powerful backspacing
set directory=~/.vim/tmp " Set temporary directory
set showcmd " Show command in status line
set autochdir " Set working directory to the buffer
set hidden "maintain undo when switching buffers

" UI Settings
set hlsearch " Highlight search
set incsearch " incremental search
set laststatus=2 " always show status line
set number " show line numbers
set ruler " show Line and Col numbers at cursor
set scrolloff=2 " keep 2 lines on top and bottom
set ttyfast " Fast terminal for smoother redrawing
let &t_SI = "\<Esc>]50;CursorShape=1\x7" "cursor shape | in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Layout
set autoindent
set expandtab " use spaces not tabs
set shiftwidth=4
set softtabstop=4
set wrap " set line wrapping
set linebreak " break on end of words instead of middle of words
set showbreak=↪ " line break symbol
set textwidth=79

" IDE
" Ctrl+n to toggle Tree
map <C-n> :NERDTreeToggle<CR> 
let NERDTreeWinSize = 38
let NERDTreeShowBookmarks = 1
let NERDTreeQuitOnOpen = 1
" Ctrl+t to toggle Tags
map <C-t> :TagbarToggle<CR> 

" Sync nerdtree with open buffer from buffexplorer
" autocmd BufWinEnter * NERDTreeFind
" php document usage mapped to Ctrl+p
au BufRead,BufNewFile *.php inoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-P> :call PhpDocRange()<CR>
let g:pdv_cfg_Author = 'Tom Jenkins <tom@techguytom.com>'
"Check php syntax on save
let g:syntastic_mode_map = { 'mode':'active','active_filetypes':['php'],'passive_filetypes':[] }

" TagList
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_WinWidth = 50
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 1
let Tlist_Process_File_Always = 1

"Ctags
set tags=./tags,tags;

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files=1

" OmniComplete
set ofu=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" gundo
nnoremap <C-u> :GundoToggle<CR>

" Debugger
let g:dbgPavimPort = 9000
" let g:dbgPavimBreakAtEntry = 1
" let g:dbgPavimPathMap = [['/Users/tjenkins/Dropbox/nerdery/newsday', '/vagrant'],]
" let g:dbgPavimPathMap = [['/Users/tjenkins/Sites/sites/danfoss', '/Users/tjenkins/Sites/sites/danfoss/web'],]
" Don't forget to put this in the .htaccess php_value xdebug.remote_host <ip_address_where_you_run_vim>

"Evervim
let g:evervim_devtoken='S=s1:U=3a27:E=149e869876a:C=14290b85b6f:P=1cd:A=en-devtoken:V=2:H=2456e213cd4fbb5688c3283382b0c754'

" KeyMaps
" Change omnicomplete to Ctrl-Space
:inoremap <C-Space> <C-X><C-O>
" Autocomplete tags <//
:iabbrev <// </<C-Space>
" Set working directory to currently open file
map <C-d> :cd %:p:h<CR>
" typing ,, or ;; adds appropriate character to the end of the line and returns
:inoremap <leader>, <Esc><S-a>,<CR>
:inoremap <leader>; <Esc><S-a>;<CR>
:inoremap <leader>{ <Esc><S-a><Space>{<CR><CR>}<Esc>ki<Tab>
:inoremap <leader>( <Esc><S-a><Space>(<CR><CR>)<Esc>ki<Tab>
:inoremap <leader><CR> <Esc><S-a><CR> 
:inoremap <leader>\ <Esc><S-a>
:noremap  ,, <Esc>
:inoremap ,, <Esc>

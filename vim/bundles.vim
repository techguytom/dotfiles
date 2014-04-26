set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'Shougo/neocomplcache'
"Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
"Bundle 'honza/snipmate-snippets'
"Bundle 'mattn/zencoding-vim'
" snipmate dependencies
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
Bundle 'sukima/xmledit'

"-----------------
" Fast navigation
"-----------------
"Bundle 'tsaleh/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'corntrace/bufexplorer'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
"Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Townk/vim-autoclose'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
"Bundle 'mileszs/ack.vim'
"Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'sumpygump/php-documentor-vim'
Bundle 'brookhong/DBGPavim'
Bundle 'mbadran/headlights'
Bundle 'docteurklein/php-getter-setter.vim'

"-------------
" Other Utils
" ------------
"Bundle 'humiaozuzu/fcitx-status'
"Bundle 'nvie/vim-togglemouse'
Bundle 'klokane/vim-phpunit'
Bundle 'kakkyz81/evervim'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'tpope/vim-rails'
"Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'
Bundle 'tsaleh/vim-align'

" web front end
Bundle 'othree/html5.vim'
"Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'
Bundle 'elzr/vim-json'

" markup language
Bundle 'tpope/vim-markdown'

" Ruby
"Bundle 'tpope/vim-endwise'

" Scheme
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"--------------
" Color Scheme
"--------------
Bundle 'flazz/vim-colorschemes'
"Bundle 'rickharris/vim-blackboard'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'rickharris/vim-monokai'
"Bundle 'tpope/vim-vividchalk'
"Bundle 'Lokaltog/vim-distinguished'
"Bundle 'chriskempson/vim-tomorrow-theme'

filetype plugin indent on     " required!

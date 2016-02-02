 set nocompatible
 filetype on
 filetype indent on
 syntax on

 "NeoBundle pac manager {

   " Note: Skip initialization for vim-tiny or vim-small.
   if 0 | endif

   if has('vim_starting')
     if &compatible
       set nocompatible               " Be iMproved
     endif

     " Required:
     set runtimepath+=~/.vim/bundle/neobundle.vim/
   endif

   " Required:
   call neobundle#begin(expand('~/.vim/bundle/'))

   " Let NeoBundle manage NeoBundle
   " Required:
   NeoBundleFetch 'Shougo/neobundle.vim'

   " My Bundles here:
   " Refer to |:NeoBundle-examples|.
   " Note: You don't set neobundle setting in .gvimrc!
   NeoBundle 'tpope/vim-rails'
   NeoBundle 'tpope/vim-surround'
   NeoBundle 'tpope/vim-fugitive'
   NeoBundle 'tomtom/tcomment_vim'
   NeoBundle 'scrooloose/nerdtree'
   NeoBundle 'Xuyuanp/nerdtree-git-plugin'
   NeoBundle 'airblade/vim-gitgutter'
   NeoBundle 'vim-airline/vim-airline'
   NeoBundle 'edkolev/tmuxline.vim'
   NeoBundle 'jiangmiao/auto-pairs'
   NeoBundle 'rstacruz/sparkup'
   NeoBundle 'garbas/vim-snipmate'
   NeoBundle 'honza/vim-snippets'
   NeoBundle 'vim-addon-mw-utils' "Dependency for snipmate
   NeoBundle 'tomtom/tlib_vim'  "Dependency for snipmate
   call neobundle#end()

   " Required:
   filetype plugin indent on

   " If there are uninstalled bundles found on startup,
   " this will conveniently prompt you to install them.
   NeoBundleCheck

 " }

 "General settings {
    set number
    set fileencoding=utf-8
    set encoding=utf-8
    set backspace=indent,eol,start
    set ts=2 sts=2 sw=2 expandtab
    set list          " Display unprintable characters f12 - switches
    set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•,extends:»,precedes:« " Unprintable chars mapping
    set breakindent
    set autoindent
    set winheight=999
    set winwidth=90
    set cursorline
    set backupdir=~/.vim/.backup
    set undodir=~/.vim/.backup
    set dir=~/.vim/.backup

    let g:html_indent_inctags = "html,body,head,tbody"      "sets the indentation
 " }

  "Statusline {
     let g:airline#extensions#tabline#enabled = 1
     let g:airline#extensions#tabline#left_sep = ''
     let g:airline#extensions#tabline#left_alt_sep = ''
     let g:airline_powerline_fonts = 1

     set laststatus=2
  " }

  :hi CursorLine   cterm=NONE ctermbg=35 ctermfg=black "color settings

  "Key mappings {
    let mapleader =","
    nnoremap vimrc :sp ~/.dotfiles/vimrc<CR>
    nnoremap zshrc :sp ~/.dotfiles/zshrc<CR>
    nnoremap nt :tabnew<CR>
    noremap <F10> :NERDTreeToggle<CR>
    noremap <F9> :TComment<CR>
    noremap <SPACE>k <C-w>k
    noremap <SPACE>j <C-w>j
    noremap <SPACE>h <C-w>h
    noremap <SPACE>l <C-w>l
  "}

  "Use TAB to complete when typing words, else inserts TABs as usual.
  "Uses dictionary and source files to find matching words to complete.

  "See help completion for source,
  "Note: usual completion is on <C-n> but more trouble to press all the time.
  "Never type the same word twice and maybe learn a new spellings!
  "Use the Linux dictionary when spelling is in doubt.
  "Window users can copy the file to their machine.
  function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3  ) =~ '^\w'
      return "\<C-N>"
    else
      return "\<Tab>"
    endif
  endfunction
  :inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
  :set dictionary="/usr/dict/words"

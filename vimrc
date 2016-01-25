 set nocompatible
 filetype on
 filetype indent on

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
   NeoBundle 'vim-scripts/ScrollColors'
   NeoBundle 'tomtom/tcomment_vim'
   NeoBundle 'vimplugin/project.vim'
   NeoBundle 'scrooloose/nerdtree'
   NeoBundle 'Xuyuanp/nerdtree-git-plugin'
   NeoBundle 'tpope/vim-surround'
   NeoBundle 'airblade/vim-gitgutter'
   NeoBundle 'vim-airline/vim-airline'
   NeoBundle 'fugitive.vim'
   call neobundle#end()

   " Required:
   filetype plugin indent on

   " If there are uninstalled bundles found on startup,
   " this will conveniently prompt you to install them.
   NeoBundleCheck

 " }

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "General settings {
 set number
 set ts=2 sts=2 sw=2 expandtab
 set list          " Display unprintable characters f12 - switches
 set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•,extends:»,precedes:« " Unprintable chars mapping
 
 " }

  "Statusline {

     " let g:airline_section_a = airline#section#create(['mode',' ','branch'])
     let g:airline#extensions#tabline#enabled = 1
     let g:airline#extensions#tabline#left_sep = ' '
     let g:airline#extensions#tabline#left_alt_sep = '|'
     let g:airline_powerline_fonts = 1

     set laststatus=2

     " }
     This is a test

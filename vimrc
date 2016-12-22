 set nocompatible
 if !exists("g:syntax_on")
   syntax enable
 endif

"  Pac Manager {

   set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim "path to dein.vim

   call dein#begin(expand('~/.vim/bundle'))
   call dein#add('tpope/vim-rails')
   call dein#add('tpope/vim-surround')
   call dein#add('tpope/vim-fugitive')
   call dein#add('tomtom/tcomment_vim')
   call dein#add('scrooloose/nerdtree')
   call dein#add('Xuyuanp/nerdtree-git-plugin')
   call dein#add('airblade/vim-gitgutter')
   call dein#add('vim-airline/vim-airline')
   call dein#add('edkolev/tmuxline.vim')
   call dein#add('jiangmiao/auto-pairs')
   call dein#add('rstacruz/sparkup')   "Sparkup lets you write HTML code faster.
   call dein#add('vim-addon-mw-utils') "Dependency for snipmate
   call dein#add('tomtom/tlib_vim')    "Dependency for snipmate
   call dein#add('garbas/vim-snipmate')
   call dein#add('honza/vim-snippets')
   call dein#add('Valloric/MatchTagAlways')
   call dein#add('easymotion/vim-easymotion')
   call dein#add('Valloric/YouCompleteMe')
   call dein#add('vim-syntastic/syntastic')

   call dein#end()

   filetype plugin indent on

"  General settings {
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

" YouCompleteMe {
  let g:ycm_global_ycm_extra_conf = '/home/alphayed/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" }

" Statusline {
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#tabline#left_sep = ''
   let g:airline#extensions#tabline#left_alt_sep = ''
   let g:airline_powerline_fonts = 1

   set laststatus=2
" }

" syntastic {
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
" }

:hi CursorLine   cterm=NONE ctermbg=35 ctermfg=black "color settings

" Key mappings {
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
  nnoremap <leader>% :MtaJumpToOtherTag<CR>

  "EasyMotion mapping {
    let g:EasyMotion_do_mapping = 0 " Disable default mappings

    " Jump to anywhere you want with minimal keystrokes, with just one
    " key binding.
    " `s{char}{label}`
    nmap s <Plug>(easymotion-overwin-f)
    " or
    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more
    " comfortable.
    nmap s <Plug>(easymotion-overwin-f2)

    " Turn on case insensitive feature
    let g:EasyMotion_smartcase = 1

    " JK motions: Line motions
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
  "}

  "}

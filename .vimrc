syntax on
set noautoindent
set tabstop=2
set shiftwidth=2
set expandtab
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_file = s:dein_dir . '/plugins.toml'
nnoremap <C-k> <PageUp>
nnoremap <C-j> <PageDown>
nnoremap fh <C-w>h
nnoremap fl <C-w>l
nnoremap fk <C-w>k
nnoremap fj <C-w>j
nnoremap ; :
nnoremap <S-j> jjjjj
nnoremap <S-k> kkkkk
nnoremap <S-h> hhhhh
nnoremap <S-l> lllll
if &compatible
  set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

if dein#load_state(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#save_state()
endif" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
  call dein#end()
endif
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" for macvim
set guioptions=c

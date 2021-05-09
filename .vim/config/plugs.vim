
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize vim plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'k0kubun/vim-open-github'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'wincent/terminus'
Plug 'thaerkh/vim-workspace'
Plug 'ajh17/VimCompletesMe'
Plug 'gangleri/vim-toggle-relative-line-numbers'
Plug 'MattesGroeger/vim-bookmarks'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-fugitive'

Plug 'JulesWang/css.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

"Plug 'w0rp/ale' " Asynchronous linting
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

Plug 'heavenshell/vim-jsdoc'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'

Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

Plug 'keith/rspec.vim'
Plug 'thoughtbot/vim-rspec'

Plug 'ryanoasis/vim-devicons' " MUST be loaded last
call plug#end()
syntax on
filetype on
filetype plugin on
filetype indent on

source ~/.vim/config/plugs.vim

" START NERDTree stuff
map <C-\> :NERDTreeToggle<CR>
nmap ,r :NERDTreeFind<CR> 
nmap ,t :NERDTreeToggle<CR>
" END NERDTree stuff

" change panels
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" change tabs
nmap <Space>j :tabr<CR>
nmap <Space>k :tabl<CR>
nmap <Space>h :tabp<CR>
nmap <Space>l :tabn<CR>

" Misc helper functions
nmap ,f :FZF<CR>
nnoremap <leader>s :ToggleWorkspace<CR>

" Rspec
nmap <Space>spec :call RunCurrentSpecFile()<CR>
let g:rspec_command = "!docker-compose -e 'RAILS_ENV=test' --rm web bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm"

" Toggles between relative and absolute line numbers
nmap ,n :ToggleNumRel<CR> 

" Toggle workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory=$HOME.'/.vim/sessions'

let NERDTreeNodeDelimiter = "\u00A0"
let NERDTreeShowHidden=1
let g:user_emmet_leader_key=','
let g:mustache_abbreviations=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
  map <Space>f :Ack!<Space>--smart-case<Space>
endif

nmap <Space>p "*p<CR> " Pastes the system clipboard into vim
vmap <Space>c "*y<CR> " Copies selected text to the system clipboard from vim

let g:javascript_plugin_jsdoc = 1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_access_descriptions=2
let g:jsdoc_allow_input_prompt=1

set number relativenumber
set mouse=a " gives us happy mouse scrolling and clicking
set nolist
set listchars=tab:»·,trail:·
set cursorline
hi CursorLine cterm=NONE ctermbg=44 ctermfg=black
set visualbell " no sounds
set autoread " reload files changed outside of vim
set splitright "splits windows to right by default
set scrolloff=10 " adds a buffer zone to the lines revealed when navigating the page edges

" Backups
set backupdir=~/.vim/tmp//
set directory=~/.vim/tmp//
set undodir=~/.vim/tmp//
" set nobackup nowritebackup

" Tab configuration
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2

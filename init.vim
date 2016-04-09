" nVim config file

call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'holokai'
Plug 'Twilight-for-python'
"Plug 'fatih/molokai'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'klen/python-mode'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
"Plug 'fatih/vim-go'
"Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'rust-lang/rust.vim'
"Plug 'racer-rust/vim-racer'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
"Plug 'zchee/deoplete-go'
"Plug 'eagletmt/neco-ghc'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
"Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
"Plug 'mattn/emmet-vim'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'

call plug#end()

syntax on
filetype plugin indent on

colorscheme twilight

set number
set modeline
set tabstop=8


" Plug
let g:plug_threads = 4
let g:plug_timeout = 30


" Auto Pairs
let g:AutoPairsFlyMode = 1


" NERDTree
"autocmd VimEnter * NERDTree
silent! nnoremap <F2> :NERDTreeToggle<cr>


" Ctrlp
let g:ctrlp_map="<c-p>"
let g:ctrlp_cmd="CtrlP"
let g:ctrlp_working_path_mode="wc"


" Tagbar
nmap <F9> :TagbarToggle<CR>


" Deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"

" Clang
"let g:clang_complete_auto = 0
"let g:clang_auto_select = 0
"let g:clang_omnicppcomplete_compliance = 0
"let g:clang_make_default_keymappings = 0
"let g:clang_use_library = 1


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "ubaryd"
if !exists("g:airline_symbols")
	let g:airline_symbols = {}
endif
"let g:airline_left_sep = ""
"let g:airline_left_alt_sep = ""
"let g:airline_right_sep = ""
"let g:airline_right_alt_sep = ""
"let g:airline_symbols.branch = ""
"let g:airline_symbols.readonly = ""
"let g:airline_symbols.linenr = ""
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#ctrlp#color_template = 'visual'


" Python mode
map <Leader>pl :SyntasticCheck flake8 pylint<CR>
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_indent = 1
let g:pymode_rope = 1
let g:pymode_virtualenv = 0
let g:pymode_folding = 0
let g:pymode_lint = 1
let g:pymode_rope_completion = 0
let g:pymode_doc_key = "<leader>k"
let g:pymode_lint_mccabe_complexity = 5
let g:pymode_run = 1
let g:pymode_run_bind = "<leader>run"
let g:pymode_lint_checkers = ["pylint", "pep8", "mccabe", "pep257"]
"let g:pymode_lint_ignore = "C0111,D100,D101,D102,D103"


" Go
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1


" txt2tags
"let tlist_txt2tags_settings="txt2tags;d:Titles"
"au BufNewFile,BufRead *.t2t set ft=txt2tags



" Neovim-qt Guifont command, to change the font
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>")
" Set font on start
let g:Guifont="Inconsolata for Powerline:h11"
"set lines=42
"set columns=90

set list!
set listchars=tab:▸\ 


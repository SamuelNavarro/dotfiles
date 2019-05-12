set nocompatible              " required
filetype off                  " required

" set the runtime path to include vim-plug
call plug#begin('~/.vim/plugged')

" Declare the list of plugins here:

"Plug 'cjrh/vim-conda' " Use of codna-envs, etc
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " Fuzzy Search.
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'  " Syntax highlighting and improved indentation.
Plug 'drewtempelmeyer/palenight.vim' "ColorScheme
Plug 'morhetz/gruvbox' " colorScheme
Plug 'lervag/vimtex' " To create .tex file.
Plug 'itchyny/lightline.vim' " statusline/tabline for Vim
Plug 'junegunn/goyo.vim' " Writing in markdown full page
Plug 'junegunn/limelight.vim' " Nice compatibility with goyo.
Plug 'scrooloose/nerdcommenter' " Comment functions
call plug#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold' " Properly folds class and functions defs, leaving loops untouched.
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'w0rp/ale'  " Syntax checker
Plugin 'nvie/vim-flake8'       " Runs the currently open file through Flake8
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'majutsushi/tagbar' " TagBar in the right of the window
Plugin 'godlygeek/tabular' " Markdown with Vim
Plugin 'plasticboy/vim-markdown' "Markdown with Vim
Plugin 'Valloric/YouCompleteMe' " Autocompletion.
Plugin 'christoomey/vim-tmux-navigator'  " Move in panes vim-tmux
Plugin 'vimwiki/vimwiki'     " Vimwiki
Plugin 'octol/vim-cpp-enhanced-highlight' " Adds highlighting of (user defined) functions etc.
Plugin 'sirver/ultisnips'     " Snippets with UltiSnips
Plugin 'honza/vim-snippets' " Snippets are separated from the engine.
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ===========================================
" ===========================================
" ============= GENERALES ===================
" ===========================================
" ===========================================

set splitbelow
set splitright
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" ===========================================
" ===========================================
" ============= Back-End ====================
" =========== Python, C, C++, CUDA ==========
" ===========================================
" ===========================================


" Ale linter only when saving files
" let g:ale_lint_on_text_changed = 'never'
" Disale completion. Only completion from ycm
" let g:ale_completion_enabled=0



" =================
" === Python ======
" =================

"Suppress the message of vim-conda environment information on vim startup
let g:conda_startup_msg_suppress=1


"To add proper PEP 8 indentation.
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Flagging Unnecesary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Make python code look pretty:
let python_highlight_all=1
" syntax on


autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4


" =================
" ===== YCM =======
" =================


let g:python3_host_prog = '/home/samuel/anaconda3/bin/python'


let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
"let g:ycm_autoclose_preview_window_after_completion=1 " Autoclosing the preview window




" python with virtualenv support and YCM
" See https://github.com/Valloric/YouCompleteMe#python-semantic-completion
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'






" ==================
" === C/C++/Cuda ===
" ==================
" Security purposes
set exrc
set secure

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1


" ===================================
" ===================================
" ======= Front-End =================
" ======= Js, Html, Css =============
" ===================================
" ===================================


" From vim-javascript, enabling syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax for NGDocs.
let g:javascript_plugin_ngdoc = 1
" Enables some additional sysntax for Flow
let g:javascript_plugin_flow = 1


" ====================================
" ====================================
" ====================================
" == Tools, extras, Functionality ====
" ====================================
" ====================================
" ====================================


""""""""""""""""""""""""
"  Limelight and Goyo  "
""""""""""""""""""""""""
" gruvbox and limelight compatibility.
let g:limelight_conceal_ctermfg = 'gray'
" Goyo.vim integration with Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Goyo Configuration
let g:goyo_width="90%"
let g:goyo_height="90%"


" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimplyFold_docstring_preview=1

" Enable 256 colors in Vim
set t_Co=256

" Enable folding with the spacebar
nnoremap <space> za


"UTF-8 Support
set encoding=utf-8


"""""""""""""""""
"  ColorScheme  "
"""""""""""""""""
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"


""""""""""""""""""""""
"  Correct spelling  "
""""""""""""""""""""""
setlocal spell
set spelllang=es,en
inoremap <C-f> <c-g>u<Esc>[s1z=`]a<c-g>u



" Line Numbering
set number
set relativenumber

" Set position on cursor
set ma
set cursorline

" Mouse support
set mouse=a

" Remap <leader>
:let mapleader=","
" Remap <localeader>
:let maplocalleader=",,"


" Adding ctags: 
" set tags=~/ctags

" Vim sets working directoroy to the current file's directory:
autocmd BufEnter * lcd %:p:h


" map <F9> to NERDTreeToggle
nmap <F9> :NERDTreeToggle<CR>
" Ignore .pyc files in NERDtree
let NERDTreeIgnore=['\.pyc$', '\~$']


" TagBar
nmap <F5> :TagbarToggle<CR>

" ================
" == lightline ===
" ================

" Get Rid of -- INSERT --
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'samuel' ],
      \           ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \  },
      \ 'component': {
      \   'samuel': 'Samuel'
      \  },
      \ }

" ================
" === Vimwiki ====
" ================
filetype plugin on
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


" =============================
" ========= Latex =============
" ====== with vimtex ==========
" =============================
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1  " Hide code when your curosr is not in the line. 
let g:tex_conceal='abdmg' " Hide code when your cursor is not in the line.

" Be able to put code with minted
" https://github.com/lervag/vimtex/issues/467
"
let g:vimtex_compiler_latexmk = {
\ 'options' : [
\ '-pdf',
\ '--shell-escape',
\ '-verbose',
\ '-file-line-error',
\ '-synctex=1',
\ '-interaction=nonstopmode',
\ ],
\}



" =============================
" ========= UltiSnips =========
" =============================
" UltiSnips

let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/'
let g:UltiSnipsSnippetDirectories=["CustomSnips", "UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-l>"

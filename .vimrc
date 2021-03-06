set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h20
" set guifont=Iosevka:h20:cDEFAULT,Yahei\ Consolas\ Hybrid:h20:cDEFAULT
set guifont=YaHei\ Consolas\ Icon\ Hybrid:h20
set guifontwide=YaHei\ Consolas\ Icon\ Hybrid:h20
" set guifont=Iosevka:h16:b:cDEFAULT "bold

" start nvim from powershell to debug

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Start cow
Plug 'mhinz/vim-startify'


" common utils
" git
" Plug 'tpope/vim-fugitive'

" Defaults everyone can agree on
" Plug 'tpope/vim-sensible'

" change such surroundings in pairs
Plug 'tpope/vim-surround'

" gcc to comment out
Plug 'tpope/vim-commentary'

" Plug 'tomtom/tcomment_vim'

" alias []
Plug 'tpope/vim-unimpaired'

"sugar shell commands rm
" Plug 'tpope/vim-eunuch'

" . repeat plug
Plug 'tpope/vim-repeat'

" enhances netrw tree explorer
" Plug 'tpope/vim-vinegar'

" automatically adjusts 'shiftwidth' and 'expandtab'
Plug 'tpope/vim-sleuth'

" automatic closing pairs
Plug 'Raimondi/delimitMate'

" s motion
Plug 'justinmk/vim-sneak'

" Directory viewer :dir
" Plug 'justinmk/vim-dirvish'

" go to file/term gof got
Plug 'justinmk/vim-gtfo'

" Wrapper of some :terminal functions.
Plug 'kassio/neoterm'

" git sign column
Plug 'airblade/vim-gitgutter'

Plug 'AndrewRadev/linediff.vim'
Plug 'chrisbra/vim-diff-enhanced'


" Plug 'SirVer/ultisnips'


" colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'fenetikm/falcon'
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
Plug 'mhartington/oceanic-next'
Plug 'cocopon/iceberg.vim'
" Plug 'rainglow/vim'


" Align center
Plug 'junegunn/goyo.vim'

" work with goyo
" Plug 'junegunn/limelight.vim'


" expend + _
Plug 'terryma/vim-expand-region'

" visual <C-n>
Plug 'terryma/vim-multiple-cursors'

" leader leader motion
" Plug 'easymotion/vim-easymotion'

" Icon
" Plug 'ryanoasis/vim-devicons'

" format

" Useful
Plug 'michaeljsmith/vim-indent-object'

" au BufWrite * :Autoformat makes use of external formatting programs
Plug 'Chiel92/vim-autoformat'

" Missing Github https://github.com/elzr/vim-jsjon
Plug 'elzr/vim-json'

" Uncover usage problems in your writing
Plug 'reedes/vim-wordy'

" Shougo's Dark Powered Vim
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets' "must together

" language supoort
" Plug 'w0rp/ale'
Plug 'mechatroner/rainbow_csv'
" Plug 'dense-analysis/ale'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" tags TODO
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'majutsushi/tagbar'


" come with deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/neopairs.vim'
" :E bug"
" Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Konfekt/FastFold'


" language specific

" Plug 'othree/yajs.vim'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/html5.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}


" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
" Plug 'zchee/deoplete-clang'


" :Go command
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Not support Go > 1.8. module
" Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" recommended fork
" Plug 'stamblerre/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Plug 'jodosha/vim-godebug'


" Plug 'andrewstuart/vim-kubernetes'
Plug 'pearofducks/ansible-vim'
Plug 'hashivim/vim-terraform'
Plug 'ekalinin/Dockerfile.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'modille/groovy.vim'







call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Differences between Nvim and Vim                 *vim-differences*<Paste>
syntax on
syntax enable
filetype plugin indent on
set autoindent
set autoread
set backspace=2 " 2 same as ":set backspace=indent,eol,start"
"set backupdir=.,$XDG_DATA_HOME/nvim/backup
set belloff=all
set complete=.,w,b,u,t
set cscopeverbose
"set directory=$XDG_DATA_HOME/nvim/swap//
if has('nvim')
    set display=lastline,msgsep
endif
set encoding=utf-8 "internal"
set fileencoding=utf-8 "convert and then save
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1 "open in order
set fillchars=""
" set fsync off
set nofsync
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch

set nolangremap
set laststatus=2
set listchars=tab:>-,trail:-
set nocompatible
set nrformats=bin,hex
set ruler
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set shortmess=filnxtToOF
set showcmd
set sidescroll=1
" set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttimeoutlen=50
set ttyfast
"set undodir=~/.local/share/nvim/undo
set wildmenu



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim option


" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

if has('nvim')
    set termguicolors
    set shada=!,'100,<50,s10,h
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config

" will cause highlight Search and CursorLineNr color invaild
" set background=dark

" set autowrite
set fileencoding=utf-8
set termencoding=utf-8
set ff=unix


set ignorecase
set smartcase
set magic               " Use magic patterns (extended regular expression) default on
set guioptions=         " remove scrollbars on macvim
set noshowmode          " don't show mode as airline already does
set foldmethod=manual   " set folds by syntax of current language
" can resize windows but can not copy
" set mouse=a
set iskeyword+=-        " treat dash separated words as a word text object


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set shiftround          " Round indent to multiple of shiftwidth
set hidden              " enable hidden unsaved buffers

set visualbell

set textwidth=0
" set textwidth=999
set wrap                " default on
" set list

set number
set relativenumber
set numberwidth=4

set splitbelow
set splitright

set inccommand=split


" only in text file, md, txt
" set spell spelllang=en_us
" set nospell
" keymap
" [s ]s z= zg



" will cause paste improper indent
" set nopaste

" will cause <C-e> <C-a> don't work
" set paste

" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif



" colorscheme darkblue
" colorscheme elflord
" colorscheme koehler
" colorscheme murphy
" colorscheme py
" colorscheme lucariox
" colorscheme solarized
" colorscheme gruvbox
" colorscheme desert256
" colorscheme janah-v
" colorscheme one       " atom
colorscheme OceanicNext


if &diff
    colorscheme janah-v
endif
au FilterWritePre * if &diff | colorscheme janah-v | endif



let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'


highlight Normal guifg=#dadada ctermfg=253 guibg=#000000 gui=NONE cterm=NONE
" highlight Comment guifg=#585858 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight Comment guifg=#666666 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" set background=dark

" doesn't work
highlight LineNr ctermfg=grey
highlight Search cterm=NONE ctermfg=grey ctermbg=blue

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Search guibg=peru guifg=wheat
highlight Search guibg=lightblue guifg=black
highlight CursorLineNr guifg=#FF00FF

"Denite select line color
highlight CursorLine guifg=#000000
" highlight CursorLine guibg=#00aaff
" highlight CursorLine guibg=#ee9900
highlight CursorLine guibg=#dd7777
highlight MatchParen cterm=bold ctermbg=yellow ctermfg=black guibg=black guifg=#dddd00 gui=bold
hi Cursor gui=reverse guibg=NONE guifg=NONE
hi CursorLine gui=reverse




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" leader maps
let mapleader = "\<Space>"

" Readline key bindings
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt

nnoremap <F2> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <F2> y :%s/<C-r>"//gc<Left><Left><Left>

nnoremap <F5>  :GoRun % <CR>


" Switch to last-active tab
if !exists('g:lasttab')
    let g:lasttab = 1
endif
nmap <Leader><tab> :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" set pastetoggle=<Leader>p


" Move
inoremap <C-a> <C-o>^
inoremap <C-e> <End>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w

inoremap <C-u> <Esc>d0s
" inoremap <C-k> <Esc>C


" <S-CR> works in mintty but not in iTerm2
inoremap <S-CR> <Esc>o
inoremap <C-CR> <Esc>o

" {
" a data file
" inoremap <S-CR> <Esc>o


" }

inoremap <End> <Esc>o
inoremap <Home> <Esc>o
noremap <M-Up> <Esc>dd<Up>P
inoremap <M-Up> <Esc>dd<Up>P
noremap <M-Down> <Esc>ddp
inoremap <M-Down> <Esc>ddp

noremap <M-S-Up> <Esc>dd<Up>P
inoremap <M-S-Up> <Esc>dd<Up>P
noremap <M-S-Down> <Esc>ddp
inoremap <M-S-Down> <Esc>ddp

" inoremap dd <Esc>dd

" <C-/>
" can not use noremap
imap <C-_> <Esc>mtgcc`tja
nmap <C-_> <Esc>mtgcc`tj
vmap <C-_> mtgc`tj

" Use set magic instead
" nnoremap / /\v
map <silent> <esc> :nohlsearch<cr>

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    nnoremap <silent> <leader>` :botright Ttoggle<CR><C-w>j
    nnoremap <silent> <leader>v` :vertical botright Ttoggle<CR><C-w>l
    tnoremap <silent> <leader>` <C-\><C-n> :Ttoggle<CR>

    nnoremap <silent> <F12> :botright Ttoggle<CR><C-w>j
    tnoremap <silent> <F12> <C-\><C-n> :Ttoggle<CR>
endif


" CWD = Change to Directory of Current file
command PWD cd %:p:h
command CWD cd %:p:h

command Marks Denite mark
command Files Denite file
command Buffers Denite buffer
command Reg Denite register
command Grep Denite grep

command M Marks
command F Files
command B Buffers
command R Reg
command G Grep

command BS :mksession! ~/vim_session <cr> " Quick write session with F2
command BR :source ~/vim_session <cr>     " And load session with F3



" nnoremap <leader>e :Vex<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>d :Denite 
nnoremap <leader>F :Denite grep<CR>
nnoremap <leader>m :Denite mark<CR>


nnoremap <silent> <leader>tn :set invrelativenumber<CR>:set invnumber<CR>
nnoremap <silent> <Leader>tg :GitGutterSignsToggle<CR>
nnoremap <silent> <Leader>tl :ALEToggle<CR>
nnoremap <silent> <Leader>ta :set invrelativenumber<CR>:set invnumber<CR>:GitGutterSignsToggle<CR>:ALEToggle<CR>
nnoremap <silent><expr> <Leader>th (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" nnoremap <C-p> :History<CR>



" set backspace=2

" http://vim.wikia.com/wiki/256_colors_in_vim
" set t_Co=256



autocmd BufWrite * set ff=unix
autocmd BufWrite * :retab
" au BufWrite * :Autoformat
" au BufNewFile,BufRead *.md set filetype=text
au BufNewFile,BufRead *.txt set filetype=text
autocmd BufNewFile,BufRead *.hcl   set filetype=tf
au BufNewFile,BufRead *.md set spell
au BufRead * if search('的', 'nw') | setlocal ft=ch | endif
au BufRead * if search('，', 'nw') | setlocal ft=ch | endif
au BufRead * if search('。', 'nw') | setlocal ft=ch | endif
au BufRead * if search('不', 'nw') | setlocal ft=ch | endif
au BufNewFile,BufRead .vimrc set ft=vim

" commentstring
autocmd FileType tf setlocal commentstring=//\ %s



" --------------------------------------------------------------------------------
"  Plugin config

" python mode
let g:pymode_python = 'python3'


if exists('g:plugs["vim-airline"]')
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline_powerline_fonts = 1
    "
    " let g:airline_theme='badcat' " doesn't work
    let g:airline_theme='deus'

    " set runtimepath^=~/.vim/pack/foo/start/ctrlp.vim
    let g:ctrlp_cmd = 'CtrlPMRU'
endif


" tree explorer
if exists('g:plugs["vim-vinegar"]')
    " 0 same, 1 horizontally, 2 vertically, 3 tab
    let g:netrw_browse_split = 3
endif





if exists('g:plugs["nerdtree"]')
    " open a NERDTree automatically when vim starts up
    " autocmd vimenter * NERDTree

    " open NERDTree automatically when vim starts up on opening a directory?
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

    " close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1

    " resolve :E conflict
    command E Ex

    " UTF-8 Unicode text
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'

    " let g:NERDTreeDirArrowExpandable = '+'
    " let g:NERDTreeDirArrowCollapsible = '-'
endif


if exists('g:plugs["fzf.vim"]')
    let g:fzf_action = {
                \ 'enter': 'tab split',
                \ 'ctrl-t': 'tab split',
                \ 'ctrl-x': 'split',
                \ 'ctrl-v': 'vsplit' }

    " [Buffers] Jump to the existing window if possible
    let g:fzf_buffers_jump = 1

    " [[B]Commits] Customize the options used by 'git log':
    let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

    " [Tags] Command to generate tags file
    let g:fzf_tags_command = 'ctags -R'

    " [Commands] --expect expression for directly executing the command
    let g:fzf_commands_expect = 'alt-enter,ctrl-x'

    " Mapping selecting mappings
    " nmap <leader><tab> <plug>(fzf-maps-n)
    " xmap <leader><tab> <plug>(fzf-maps-x)
    " omap <leader><tab> <plug>(fzf-maps-o)

    " Insert mode completion
    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    " Advanced customization using autoload functions
    inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
endif



" work with goyo
if exists('g:plugs["Limelight"]')
    " Color name (:help cterm-colors) or ANSI code
    let g:limelight_conceal_ctermfg = 'gray'
    let g:limelight_conceal_ctermfg = 240

    " Color name (:help gui-colors) or RGB color
    let g:limelight_conceal_guifg = 'DarkGray'
    let g:limelight_conceal_guifg = '#777777'

    " Default: 0.5
    let g:limelight_default_coefficient = 0.7

    " Number of preceding/following paragraphs to include (default: 0)
    let g:limelight_paragraph_span = 1

    " Beginning/end of paragraph
    "   When there's no empty line between the paragraphs
    "   and each paragraph starts with indentation
    let g:limelight_bop = '^\s'
    let g:limelight_eop = '\ze\n^\s'

    " Highlighting priority (default: 10)
    "   Set it to -1 not to overrule hlsearch
    let g:limelight_priority = -1

    Goyo.vim integration

    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

endif



if exists('g:plugs["denite.nvim"]')

    " reset 50% winheight on window resize
    augroup deniteresize
        autocmd!
        autocmd VimResized,VimEnter * call denite#custom#option('default',
                    \'winheight', winheight(0) / 2)
    augroup end

    " call denite#custom#option('_', { 'start_filter': v:true })
    " Define mappings
    autocmd FileType denite call s:denite_my_settings()
    function! s:denite_my_settings() abort
        nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
        nnoremap <silent><buffer><expr> <C-s> denite#do_map('do_action', 'split')
        nnoremap <silent><buffer><expr> <C-v> denite#do_map('do_action', 'vsplit')
        nnoremap <silent><buffer><expr> <C-t> denite#do_map('do_action', 'tabopen')
        nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action', 'tabopen')
        nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
        nnoremap <silent><buffer> <C-n> <Esc> :call cursor(line('.')+1,0)<CR>
        nnoremap <silent><buffer> <C-p> <Esc> :call cursor(line('.')-1,0)<CR>
        nnoremap <silent><buffer><expr> q denite#do_map('quit')
        nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
        nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
        nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j')
        nnoremap <silent><buffer><expr> <Esc> denite#do_map('enter_mode', 'normal')
        nnoremap <silent><buffer><expr> <C-[> denite#do_map('enter_mode', 'normal')

    endfunction
    
    call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
          \ [ '.git/', '.ropeproject/', '__pycache__/', 'node_modules', 'vendor',
          \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
    call denite#custom#source(
    \ '_', 'matchers', ['matcher/regexp'])

    call denite#custom#var('_', 'command',
    \ ['\ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

    nnoremap <C-p> :<C-u>Denite file/old<CR>
endif



au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
" au BufRead,BufNewFile *.yml set filetype=yaml.ansible
" au BufRead,BufNewFile *.yaml set filetype=yaml.ansible
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


if exists('g:plugs["vim-terraform"]')
    let g:terraform_align=1
    let g:terraform_fold_sections=1
    let g:terraform_remap_spacebar=1
    let g:terraform_commentstring='//%s'
    let g:terraform_fmt_on_save=1
endif


if exists('g:plugs["deoplete.nvim"]')
    " Enable deoplete when InsertEnter.
    let g:deoplete#enable_at_startup = 0
    autocmd InsertEnter * call deoplete#enable()

    " Use smartcase.
    call deoplete#custom#option('smart_case', v:true)

    " <C-h>, <BS>: close popup and delete backword char.
    " inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
    " inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

    " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
    let g:neosnippet#enable_completed_snippet = 1

    " I want to silence the |ins-completion-menu| messages in the command line
    " You can disable the messages through the 'shortmess' option.
    set shortmess+=c

    " I want to use the auto select feature like |neocomplete|.
    " set completeopt+=noinsert

    set completeopt=menu,noinsert


    " I want to close the preview window after completion is done.
    autocmd CompleteDone * silent! pclose!
    " Or
    autocmd InsertLeave * silent! pclose!

    " control the colors used for popup menu using highlight
    highlight Pmenu ctermbg=8 guibg=#606060
    highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
    highlight PmenuSbar ctermbg=0 guibg=#d6d6d6


    """    " for more details about my neovim setup see:
    """    " http://afnan.io/2018-04-12/my-neovim-development-setup/
    """
    """    " deoplete options
    """    let g:deoplete#enable_at_startup = 1
    """    let g:deoplete#enable_smart_case = 1
    """
    """    " disable autocomplete by default
    """    let b:deoplete_disable_auto_complete=1
    """    let g:deoplete_disable_auto_complete=1
    """    call deoplete#custom#buffer_option('auto_complete', v:false)
    """
    """    if !exists('g:deoplete#omni#input_patterns')
    """        let g:deoplete#omni#input_patterns = {}
    """    endif
    """
    """    " Disable the candidates in Comment/String syntaxes.
    """    call deoplete#custom#source('_',
    """                \ 'disabled_syntaxes', ['Comment', 'String'])
    """
    """    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
    """
    """    " set sources
    """    let g:deoplete#sources = {}
    """    let g:deoplete#sources.cpp = ['LanguageClient']
    """    let g:deoplete#sources.python = ['LanguageClient']
    """    let g:deoplete#sources.python3 = ['LanguageClient']
    """    let g:deoplete#sources.rust = ['LanguageClient']
    """    let g:deoplete#sources.c = ['LanguageClient']
    """    let g:deoplete#sources.vim = ['vim']

endif




if exists('g:plugs["deoplete-go"]')
    " TODO

    let g:deoplete#sources#go#gocode_binary = ''
    let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

    " deoplete.nvim recommend
    " set completeopt+=noselect
endif


if exists('g:plugs["neosnippet.vim"]')
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    " imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    " smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    " xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets behavior.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    "
    imap <expr><TAB>
                \ pumvisible() ? "\<Plug>(neosnippet_expand_or_jump)" :
                \ neosnippet#expandable_or_jumpable() ?
                \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    " imap <expr><TAB>
    "             \ pumvisible() ? "\<C-n><Plug>(neosnippet_expand_or_jump)" :
    "             \ neosnippet#expandable_or_jumpable() ?
    "             \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    " imap <expr><C-k>
    "             \ neosnippet#expandable_or_jumpable() ?
    "             \    "\<Plug>(neosnippet_expand_or_jump)" : "\<C-y>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " It can write in this way
    " \ pumvisible() ? "\<C-n>" :
    " \ pumvisible() ? "\<C-k>" :


    " use <CR> to select or close complete
    " imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : pumvisible() ?


    " For conceal markers. quoto will disappear
    " if has('conceal')
    "     set conceallevel=2 concealcursor=niv
    " endif
endif


let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }



if exists('g:plugs["deoplete-jedi"]')
    " g:deoplete#sources#jedi#enable_typeinfo: Enables type information of completions. If you disable it, you will get the faster results. Default: 1
    " g:deoplete#sources#jedi#show_docstring: Shows docstring in preview window. Default: 0
    " g:deoplete#sources#jedi#python_path: Set the Python interpreter path to use for the completion server. It defaults to "python", i.e. the first available python in $PATH. Note: This is different from Neovim's Python (:python) in general.
    " g:deoplete#sources#jedi#extra_path: A list of extra paths to add to sys.path when performing completions.
    " g:deoplete#sources#jedi#ignore_errors: Ignore jedi errors for completions. Default: 0
endif




" ensure no tab
set tabstop=4 shiftwidth=4 expandtab


".ideavim
" map <F2> :action RenameElement<CR>


" let g:python3_host_prog = 'PATH/python3/python3.exe'
" let g:python3_host_prog='C:\python3\python'
let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header='/usr/lib/llvm-6.0/lib/clang'



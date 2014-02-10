""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename: .vimrc "
" Maintainer: Joonas Sillanpää <joonas.silla@gmail.com>"
" URL: 
" "
" "
" Sections: "
" 01. General ................. General Vim behavior "
" 02. Events .................. General autocmd events "
" 03. Theme/Colors ............ Colors, fonts, etc. "
" 04. Vim UI .................. User interface behavior "
" 05. Text Formatting/Layout .. Text, tab, indentation related "
" 06. Custom keybindings....... <space> for za etc.. "
" 07. Latex Settings
" 08. NetRW settings
" 09. VimWiki 
" 10. Vundle .................. Vim plugin management
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get rid of Vi compatibility mode. SET FIRST!
set autowrite    
"set clipboard=unnamedplus
" set clipboard=unnamedplus " copy to unnamed register
" set go+=a             " visual selection copies to clipboard

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Theme/Colors "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256 " enable 256-color mode.
syntax enable " enable syntax highlighting (previously syntax on).
colorscheme desert " set colorscheme

" Highlight characters that go over 80 columns
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set number " show line numbers
" set cul " highlight current line
set laststatus=2 " last window always has a statusline
set nohlsearch " Don't continue to highlight searched phrases.
set incsearch " But do highlight as you type your search.
set ignorecase " Make searches case-insensitive.
set ruler " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

" set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set autoindent " auto-indent
set cindent         " see :h cindent, is more clever than autoindent & smartindent
set tabstop=4 " tab spacing
set softtabstop=4 " unify
set shiftwidth=4 " indent/outdent by 4 columns
set shiftround " always indent/outdent to the nearest tabstop
set expandtab " use spaces instead of tabs
set smarttab " use tabs at the start of a line, spaces elsewhere
set nowrap " don't wrap text


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom keybindings"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These two commands collide a little. 
" nnoremap <space> za  " Space is more convenient in folding

" Set leader key to - which is easier to type
let mapleader="-"

" Easy shortcut for editihg vimrc
nmap <leader>vrc :e ~/.vimrc<CR>

" Enter will add a new line in normal mode
" map <CR> O<Esc> " Messes up quickfix window!!

" Use ctrl-s for easy saving
nmap <c-s> :w<CR>
imap <c-s> <Esc><c-s>

" Use ctrl-b for build
nmap <c-b> :make<CR>

" C-space for omni completion
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 07. Latex settings"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:TexDefaultTargetFormat='pdf'  " Compile to pdf in default
let g:Tex_ViewRule_pdf='evince'     " Use evince for viewing pdf


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 08. NetRW settings"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_browse_split=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 09. VimWiki "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_auto_checkbox=1 " If on, creates checkbox while toggling list item
                              " , that is pressing C-<space>

" List of wikis, their paths and options
let wiki_1 = {}
let wiki_1.path = '~/Dropbox/private/mywiki/'
let wiki_1.path_html = '~/Dropbox/private/mywiki/html/'

let g:vimwiki_list = [wiki_1]
autocmd FileType vimwiki set tw=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 10. Vundle - Vim plugin management "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

" Information management
Bundle 'vimwiki'
Bundle 'https://github.com/vim-scripts/calendar.vim--Matsumoto.git'

" Buffer navigation
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'minibufexpl.vim'

" Snippets
Bundle 'snipMate'

" Python setup: http://unlogic.co.uk/posts/vim-python-ide.html 
" - lint, code completion, documentation lookup, refactoring, etc...
Bundle 'klen/python-mode'

" Source code formatting
Bundle "Chiel92/vim-autoformat"
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11. Taglist  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 12. BufExplorer  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 13. NERDtree  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F3> :NERDTreeToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-autoformat  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-a><C-f> :Autoformat<CR><CR>

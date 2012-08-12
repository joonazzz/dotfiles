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
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get rid of Vi compatibility mode. SET FIRST!

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent " auto-indent
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
map <CR> O<Esc> " Enter works in normal mode


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






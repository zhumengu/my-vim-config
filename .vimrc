set nocompatible

source ~/.vim/plug_opts.vim

call plug#begin('~/.vim/plugged')
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'Chiel92/vim-autoformat'
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'airblade/vim-rooter'
    Plug 'ap/vim-css-color'
    Plug 'c9s/perlomni.vim', { 'for': 'perl' }
    Plug 'editorconfig/editorconfig-vim'
    Plug 'godlygeek/tabular'
    Plug 'hotchpotch/perldoc-vim', { 'for': 'perl' }
    Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'mattn/emmet-vim', { 'for': [ 'xml', 'html', 'php' ] }
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'scrooloose/nerdtree', { 'do': 'NERDTreeFocus' }
    Plug 'scrooloose/syntastic'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround' | Plug 'tpope/vim-repeat'
    Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
    Plug 'vimwiki/vimwiki'
    Plug 'wellle/targets.vim'
    Plug 'xuhdev/SingleCompile'
    " 配色方案
    Plug 'whatyouhide/vim-gotham'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

source ~/.vim/maps.vim
source ~/.vim/abbreviate.vim
source ~/.vim/opts.vim

filetype plugin indent on    " required

colorscheme gruvbox
syntax on

if has("autocmd")
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    autocmd BufWritePre *.vbs,*.bat,*.cmd setlocal fileformat=dos fenc=gbk tw=0
    autocmd BufWritePre *.nsi setlocal bomb fenc=utf8
    autocmd BufWritePost ~/.Xresources :silent !xrdb ~/.Xresources
    autocmd BufWritePost ~/.vimrc :source ~/.vimrc

    augroup filetypedetect
        autocmd BufNewFile,BufRead *.blade.php setlocal filetype=html.blade
        autocmd BufNewFile,BufRead *.html.ep setlocal filetype=html.ep
        autocmd BufNewFile,BufRead *.html.erb setlocal filetype=html.eruby
        autocmd BufNewFile,BufRead *.rb setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.sass,*.scss setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.tt,*.tt2 setlocal filetype=tt2
    augroup END

    augroup completedef
        autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete
        autocmd FileType autohotkey setlocal omnifunc=ahkcomplete#Complete
        autocmd FileType c setlocal ofu=ccomplete#CompleteCpp
        autocmd FileType coffee setlocal ts=2 sw=2 et sta
        autocmd FileType css setlocal ofu=csscomplete#CompleteCSS
        autocmd FileType html,xhtml setlocal ofu=htmlcomplete#CompleteTags
        autocmd FileType php setlocal ofu=phpcomplete#CompletePHP
        autocmd FileType ruby,eruby setlocal ofu=rubycomplete#Complete
        autocmd FileType perl setlocal omnifunc=PerlComplete
    augroup END

    augroup comment
        autocmd FileType *sh,awk,python,perl,perl6,ruby let b:cmt = exists('b:cmt') ? b:cmt : '#'
        autocmd FileType vim let b:cmt = exists('b:cmt') ? b:cmt : '"'
        autocmd BufNewFile,BufRead *.vim,.vimrc let b:cmt = exists('b:cmt') ? b:cmt : '"'
        autocmd BufNewFile,BufRead * let b:cmt = exists('b:cmt') ? b:cmt : '#'
        autocmd BufNewFile,BufRead *.p[lm],.t let b:cmt = exists('b:cmt') ? b:cmt : '#'
    augroup END

    autocmd BufWritePre * call custom#striptrailingwhitespace()
endif

set nocompatible
call plug#begin('~/.vim/plugged')
"Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/goyo.vim'
"Plug 'mg979/vim-visual-multi'
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'rlue/vim-barbaric'    " normal 模式退出输入法
"Plug 'ruby-formatter/rufo-vim'
Plug'vim-scripts/fcitx.vim'
Plug 'airblade/vim-rooter'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips'
Plug 'altercation/vim-colors-solarized'
Plug 'c9s/perlomni.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'honza/vim-snippets'
Plug 'hotchpotch/perldoc-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'machakann/vim-Verdin'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-programs moose test-more try-tiny' }
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vimwiki/vimwiki'
Plug 'whatyouhide/vim-gotham'
Plug 'ycm-core/YouCompleteMe'
Plug 'yegappan/mru'
Plug 'zhumengu/vim-AHKcomplete'
call plug#end()

let g:vim_markdown_folding_disabled = 1
let &t_TI=""
let &t_TE=""
let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.6, 'border': 'rounded'}  }
let g:formatters_ruby = ['rufo']
let g:formatdef_rufo = "'rufo -x'"
let g:perlomni_export_functions = 1
let g:NERDTreeRespectWildIgnore = 1
let g:Templates_MapInUseWarn = 0
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsListSnippets = '<c-z>'
let g:airline_powerline_fonts = 1
if has('Win32')
    let g:airline_symbols_ascii = 1
else
    let g:airline_powerline_fonts = 1
endif
let g:airline_theme = 'solarized'
let g:auto_strip_tailing_whitespace = 1
"let g:barbaric_default = 0
"let g:barbaric_timeout = 1
let g:barbaric_scope = 'buffer'
let g:barbaric_timeout = -1
let g:closetag_html_style = 1
let g:indent_guides_guide_size = 1
let g:perl_sub_signatures = 1
let g:rainbow_active = 1
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:yankring_history_dir = '$HOME/.vim,$HOME'
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>'] " ycm 与 ultisnips 的按键冲突(tab是 ycm 的弹出选择键，是 ultisnips 的补全展开键), 修改 ycm 选择键
let g:vimwiki_global_ext = 0
let g:user_emmet_settings = {
            \ 'php' : {
            \ 'extends' : 'html',
            \ 'filters' : 'c',
            \ },
            \ 'xml' : {
            \ 'extends' : 'html',
            \ },
            \ 'haml' : {
            \ 'extends' : 'html',
            \ },
            \}
let g:vimwiki_list = [{
            \ 'path': '~/ownCloud/Notes',
            \ 'syntax': 'markdown', 'ext': '.md',
            \ 'path_html': '~/.vimwiki/html/public',
            \ 'template_path': '~/.vimwiki/html/pulibc/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html'
            \ },{
            \ 'path': '~/ownCloud/Notes',
            \ 'path_html': '~/.vimwiki/html/private/',
            \ 'syntax': 'markdown', 'ext': '.md'
            \ },{
            \ 'path': '~/.vimwiki/wiki/english',
            \ 'path_html': '~/.vimwiki/html/english/'
            \ }
            \]

inoremap , <C-r>=AppendSpaceAfter(',')<cr>
inoremap <cr> <C-r>=RemoveTrailingBlank()<cr>
inoremap -. ->
inoremap =. =>
inoremap <C-d> <C-[>mzyyp`zgj
inoremap <F5> <C-o>:set number!<CR>
nmap <F3> :w!<CR>
nmap <F5> :set number!<CR>
nmap <silent> <leader>e :set wrap!<cr>
nmap <silent> <leader>s :Rg<cr>
nmap <silent> <leader>h :set hlsearch!<cr>
nmap <silent> <leader>m :Mru<cr>
nmap <silent> <leader>q :wqa<cr>
nmap <silent> <leader>r :e!<space><cr>
nmap <silent> <leader>rt :Autoformat<cr>
nmap <silent> <leader>t :NERDTreeFocus<cr>
nmap <silent> <leader>w :w!<cr>
nmap <silent> <leader>f :FZF<cr>
nmap <silent> <leader>fx :YcmCompleter FixIt<cr>

filetype plugin indent on    " required

colorscheme gruvbox
syntax on

set ttimeoutlen=100     " fcitx 需要, 不设置 esc 按键会延迟
set conceallevel=2
set vb t_vb=
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
set notagbsearch
set autoindent
set number
set relativenumber
set numberwidth=6
set textwidth=0
set formatoptions+=mM
set fdm=syntax
set nowrap
set showcmd
set ts=4
set sw=4
set sts=4
set et
set sta
set shiftround
set mouse=a
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8
set ff=unix
set backspace=indent,eol,start
set incsearch
set hidden
set modeline
set laststatus=2
set t_Co=256
set completeopt+=popup
set background=dark
set list!
"仅仅当系统不支持 unicode 字符时才使用 ascii 字符
set listchars=tab:?\ ,trail:·,extends:\#,nbsp:.

if has('gui_running')
    set guifont=Source\ Code\ Variable\ 12
    set guioptions-=T
    if has('Win32')
        set guifont=Source_Code_Pro:h11
        set guioptions-=m
    else
        set guifont=Source\ Code\ Variable\ 12
        set guioptions-=T
    endif
elseif $SSH_CONNECTION
    colorscheme industry
endif

if has("autocmd")
    autocmd BufWritePre *.vbs,*.bat,*.cmd setlocal fileformat=dos fenc=gbk tw=0

    augroup AutoPairs
        autocmd FileType vb let b:AutoPairs={'(':')', '[':']', '{':'}', '"':'"', 'If':'Then'}
        autocmd FileType vim let b:AutoPairs={'(':')', '[':']', '{':'}', "'":"'" }
    augroup end

    augroup filetypedetect
        autocmd BufNewFile,BufRead *.blade.php setlocal filetype=html.blade
        autocmd BufNewFile,BufRead *.html.ep setlocal filetype=html.ep
        autocmd BufNewFile,BufRead *.html.erb setlocal filetype=html.eruby
        autocmd BufNewFile,BufRead *.rb setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.sass,*.scss setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.tt,*.tt2 setlocal filetype=tt2
    augroup END

    autocmd BufWritePre * call StripTrailingWhitespace()
    autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete
    autocmd FileType autohotkey setlocal omnifunc=ahkcomplete#Complete
    autocmd FileType c setlocal ofu=ccomplete#CompleteCpp
    autocmd FileType coffee setlocal ts=2 sw=2 et sta
    autocmd FileType css setlocal ofu=csscomplete#CompleteCSS
    autocmd FileType html,xhtml setlocal ofu=htmlcomplete#CompleteTags
    autocmd FileType php setlocal ofu=phpcomplete#CompletePHP
    autocmd FileType ruby,eruby setlocal ofu=rubycomplete#Complete
    autocmd FileType perl,php :syntax on
    autocmd FileType perl setlocal omnifunc=PerlComplete
    autocmd VimEnter,VimResized * :call OnResize()
endif

function! StripTrailingWhitespace()
    if g:auto_strip_tailing_whitespace == 1
        %s/\s\+$//e
    endif
endfunction

function! OnResize()
    if &columns > 120
        if filereadable(expand('%'))
            let g:NERDTreeQuitOnOpen = 0
            set cc=75
            NERDTreeFocus
            wincmd w
        endif
    else
        set cc=
        let g:NERDTreeQuitOnOpen=1
        if g:NERDTree.IsOpen()
            try
                NERDTreeClose
            catch
            endtry
        endif
    endif
endfunction

function! CN_SPACE() range
    let r =  'silent!' . join([a:firstline, a:lastline], ',')
    exe l:r . 's/\%([\u4e00-\u9fff]\)\@<=\s*\(\w\+\)/ \1/g'
    exe l:r . 's/\(\w\+\)\s*\%([\u4e00-\u9fff]\)\@=/\1 /g'
endfunction

command! -range CNSPACE <line1>,<line2>call CN_SPACE()

function! UnderCursorCharacter()
    let left = getline('.')[col('.') - 2]
    let center = getline('.')[col('.') - 1]
    let right = getline('.')[col('.')]
    return [left, center, right]
endfunction

function! AppendSpaceAfter(char)
    let arr = UnderCursorCharacter()
    if (arr[1] == '' && arr[2] == '') || arr[1] != " "
        return ",\<space>"
    endif
    return ","
endfunction

function! RemoveTrailingBlank()
    let previous = line('.')
    let text = getline(previous)
    call setline(previous, substitute(text, '\s\+$', '', ''))
    return "\<cr>"
endfunction

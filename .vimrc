call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'WolfgangMehner/perl-support'
Plug 'altercation/vim-colors-solarized'
Plug 'frazrepo/vim-rainbow'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'plasticboy/vim-markdown'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'preservim/nerdcommenter'
Plug 'rlue/vim-barbaric'    " normal 模式退出输入法
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-programs moose test-more try-tiny' }
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vimwiki/vimwiki'
Plug 'ycm-core/YouCompleteMe'
Plug 'yegappan/mru'
Plug 'zhumengu/vim-AHKcomplete'
call plug#end()

let g:NERDTreeRespectWildIgnore = 1
let g:Templates_MapInUseWarn = 0
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsListSnippets = '<c-h>'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:auto_strip_tailing_whitespace = 1
let g:barbaric_default = 0
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
nmap <silent> <leader>h :set hlsearch!<cr>
nmap <silent> <leader>m :Mru<cr>
nmap <silent> <leader>q :qa!<cr>
nmap <silent> <leader>r :e!<space><cr>
nmap <silent> <leader>t :NERDTreeFocus<cr>
nmap <silent> <leader>w :w!<cr>
nmap <leader>f :YcmCompleter FixIt<cr>

filetype plugin indent on    " required
syntax on

colorscheme solarized

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
set notagbsearch
set autoindent
set number
set relativenumber
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
set fileencodings=utf8,gbk,latin1
set backspace=indent,eol,start
set incsearch
set hidden
set modeline
set guifont=Monaco:h16
set laststatus=2
set t_Co=256
set completeopt+=preview
set background=dark
set list!
"仅仅当系统不支持 unicode 字符时才使用 ascii 字符
set listchars=tab:»\ ,trail:·,extends:\#,nbsp:.

if has('gui_running')
  set guifont=Source\ Code\ Variable\ 12
  set guioptions-=T
elseif $SSH_CONNECTION
  colorscheme industry
endif

if has("autocmd")
    autocmd BufEnter * :lchdir %:p:h
    autocmd BufEnter,BufRead,BufWrite *.vbs,*.bat,*.cmd setlocal fileformat=dos enc=gbk fileencoding=gbk tw=0

    augroup filetypedetect
        autocmd BufNewFile,BufRead *.blade.php setlocal filetype=html.blade
        autocmd BufNewFile,BufRead *.html.ep setlocal filetype=html.ep
        autocmd BufNewFile,BufRead *.html.erb setlocal filetype=html.eruby
        autocmd BufNewFile,BufRead *.rb setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.sass,*.scss setlocal ts=2 sw=2 sts=2 et sta
        autocmd BufNewFile,BufRead *.tt,*.tt2 setlocal filetype=tt2
    augroup END

    autocmd BufWritePre * call StripTrailingWhitespace()
    autocmd FileType autohotkey setlocal omnifunc=ahkcomplete#Complete
    autocmd FileType c setlocal ofu=ccomplete#CompleteCpp
    autocmd FileType coffee setlocal ts=2 sw=2 et sta
    autocmd FileType css setlocal ofu=csscomplete#CompleteCSS
    autocmd FileType html,xhtml setlocal ofu=htmlcomplete#CompleteTags
    autocmd FileType php setlocal ofu=phpcomplete#CompletePHP
    autocmd FileType ruby,eruby setlocal ofu=rubycomplete#Complete
    autocmd VimEnter,VimResized * :call OnResize()

    " perlsupport 的 ultisnips 跳转区域按键相同(C-j), 临时修改 ultisnip 跳转触发
    autocmd FileType perl let g:UltiSnipsJumpForwardTrigger = "<C-n>"
    " perl syntax 没有自动打开
    autocmd FileType perl syntax on
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



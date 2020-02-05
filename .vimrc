set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/YankRing.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'frazrepo/vim-rainbow'
Plug 'honza/vim-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'WolfgangMehner/perl-support'
Plug 'plasticboy/vim-markdown'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-programs moose test-more try-tiny' }
Plug 'vimwiki/vimwiki'
Plug 'ycm-core/YouCompleteMe'
Plug 'yegappan/mru'
Plug 'zhumengu/vim-AHKcomplete'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'PProvost/vim-ps1'
call plug#end()

filetype plugin indent on    " required
syntax on

function! UnderCursorCharacter()
    let left = getline('.')[col('.') - 2]
    let center = getline('.')[col('.') - 1]
    let right = getline('.')[col('.')]
    return [left, center, right]
endfunction

function! AppendSpaceAfter(char)
    let arr = UnderCursorCharacter()
    if arr[1] == '' && arr[2] == ''
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

inoremap , <C-r>=AppendSpaceAfter(',')<cr>
inoremap <cr> <C-r>=RemoveTrailingBlank()<cr>
inoremap -. ->
inoremap =. =>
inoremap <C-d> <C-[>mzyyp`zgj
inoremap <F3> <C-o>:write<CR>
inoremap <F5> <C-o>:set number!<CR>
inoremap <c-x><c-k> <c-x><c-k>
nmap <F3> :w!<CR>
nmap <F5> :set number!<CR>
nmap <silent> <leader>e :set wrap!<cr>
nmap <silent> <leader>h :set hlsearch!<cr>
nmap <silent> <leader>m :Mru<cr>
nmap <silent> <leader>q :wq!<cr>
nmap <silent> <leader>r :e!<space><cr>
nmap <silent> <leader>t :NERDTreeToggle<cr>:wincmd h<cr>
nmap <silent> <leader>w :w!<cr>

set autochdir
set autoindent
set number
set relativenumber
set textwidth=75
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
if has('gui_running')
    set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
else
    set listchars=tab:>.,trail:.,extends:\#,nbsp:.
endif

colorscheme darkblue

if has('gui_gtk')
  set guifont=Source\ Code\ Variable\ 12
  colorscheme delek
  set guioptions-=T
elseif $SSH_CONNECTION
  colorscheme industry
endif

if has("autocmd")
    autocmd BufEnter * :lchdir %:p:h
    autocmd BufEnter,BufRead,BufWrite *.vbs,*.bat,*.cmd setlocal fileformat=dos enc=gbk fileencoding=gbk tw=0
    autocmd BufNewFile,BufRead *.blade.php setlocal filetype=html.blade
    autocmd BufNewFile,BufRead *.html.ep setlocal filetype=html.ep
    autocmd BufNewFile,BufRead *.html.erb setlocal filetype=html.eruby
    autocmd BufNewFile,BufRead *.rb setlocal ts=2 sw=2 sts=2 et sta
    autocmd BufNewFile,BufRead *.sass,*.scss setlocal ts=2 sw=2 sts=2 et sta
    autocmd BufNewFile,BufRead *.tt,*.tt2 setlocal filetype=tt2
    autocmd BufWritePre * %s/\s\+$//e
    autocmd FileType autohotkey setlocal omnifunc=ahkcomplete#Complete
    autocmd FileType c setlocal ofu=ccomplete#CompleteCpp
    autocmd FileType coffee setlocal ts=2 sw=2 et sta
    autocmd FileType css setlocal ofu=csscomplete#CompleteCSS
    autocmd FileType groovy setlocal cindent
    autocmd FileType html,xhtml setlocal ofu=htmlcomplete#CompleteTags
    autocmd FileType php setlocal ofu=phpcomplete#CompletePHP
    autocmd FileType ruby,eruby setlocal ofu=rubycomplete#Complete
    autocmd VimEnter,VimResized * :call OnResize()
endif
func! OnResize()
    if &columns > 120
        if filereadable(expand('%'))
            NERDTree %:p
            wincmd l
            let g:NERDTreeQuitOnOpen = 0
            set cc=75
        endif
    else
        set cc=
        NERDTreeClose
        let g:NERDTreeQuitOnOpen=1
    endif
endfunc

let g:perl_sub_signatures = 1
let g:NERDSpaceDelims = 1
let g:Templates_MapInUseWarn = 0
" ycm 与 ultisnips 的按键冲突(tab是 ycm 的弹出选择键，是 ultisnips 的补全展开键), 修改 ycm 选择键
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsListSnippets = '<c-h>'
" perlsupport 的 ultisnips 跳转区域按键相同(C-j), 临时修改 ultisnip 跳转触发
autocmd FileType perl let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:closetag_html_style = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:lightline = { 'colorscheme': 'solarized' }
let g:rainbow_active = 1
let g:vim_markdown_frontmatter = 1
let g:yankring_history_dir = '$HOME/.vim,$HOME'
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

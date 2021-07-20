set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
Plug 'luochen1990/rainbow'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'xuhdev/SingleCompile'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/fcitx.vim'
Plug 'airblade/vim-rooter'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips'
Plug 'altercation/vim-colors-solarized'
Plug 'c9s/perlomni.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'
Plug 'hotchpotch/perldoc-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-Verdin'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vimwiki/vimwiki'
Plug 'whatyouhide/vim-gotham'
Plug 'ycm-core/YouCompleteMe'
Plug 'yegappan/mru'
Plug 'wellle/targets.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
let g:vimwiki_folding='expr'
let g:vimwiki_conceal_pre=1
let g:UltiSnipsNoPythonWarning = 1
let g:rooter_silent_chdir = 1
let g:vim_markdown_folding_disabled = 1
let &t_TI=""
let &t_TE=""
let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.6, 'border': 'rounded'}  }
let g:formatters_ruby = ['rufo']
let g:formatdef_rufo = "'rufo -x'"
let g:perlomni_export_functions = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeRemoveExtraSpaces = 1
let g:NERDTreeMinimalUI = 1
let g:Templates_MapInUseWarn = 0
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsListSnippets = '<c-z>'
if has('Win32')
    let g:airline_symbols_ascii = 1
else
    let g:airline_powerline_fonts = 1
endif
let g:append_space_after_ignore = ['csv']
let g:airline_theme = 'solarized'
let g:auto_strip_tailing_whitespace = 1
let g:closetag_html_style = 1
let g:indent_guides_guide_size = 1
let g:perl_sub_signatures = 1
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
            \ 'path': '~/.vimwiki/work/wiki',
            \ 'syntax': 'markdown', 'ext': '.md',
            \ 'path_html': '~/.vimwiki/work/html',
            \ 'template_path': '~/.vimwiki/work/html/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html'
            \ },{
            \ 'path': '~/.vimwiki/private/wiki',
            \ 'path_html': '~/.vimwiki/private/html/',
            \ 'syntax': 'markdown', 'ext': '.md'
            \ }
            \ ]
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'guis': [''],
\   'cterms': [''],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'nerdtree': 0,
\       'css': 0,
\       'markdown': {
\           'parentheses_options': 'containedin=markdownCode contained'
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3']
\       },
\       'vim': {
\           'parentheses_options': 'containedin=vimFuncBody'
\       },
\       'perl': {
\           'syn_name_prefix': 'perlBlockFoldRainbow'
\       },
\       'stylus': {
\           'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup']
\       }
\   }
\}
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" mapping
inoremap , <C-r>=AppendSpaceAfter(',')<cr>
inoremap <cr> <C-r>=RemoveTrailingBlank()<cr>
inoremap -. ->
inoremap =. =>
inoremap <C-d> <C-[>mzyyp`zgj
inoremap <F5> <C-o>:set number!<CR><C-o>:set paste!<CR>
nmap G Gzz
nmap <F3> :w!<CR>
nmap <F5> :set number!<CR>
nmap <F9> :SingleCompile<cr>
nmap <F10> :SingleCompileRun<cr>
nmap <silent> <leader>e :set wrap!<cr>
nmap <silent> <leader>gg :Gpush origin master<cr>
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>s :Rg<cr>
nmap <silent> <leader>h :set hlsearch!<cr>
nmap <silent> <leader>m :Mru<cr>
nmap <silent> <leader>q :q<cr>
nmap <silent> <leader>x :xa<cr>
nmap <silent> <leader>r :e!<space><cr>
nmap <silent> <leader>rt :Autoformat<cr>
nmap <silent> <leader>t :NERDTreeFocus<cr>
nmap <silent> <leader>w :w!<cr>
nmap <silent> <leader>f :FZF<cr>
nmap <silent> <leader>fx :YcmCompleter FixIt<cr>
nmap <cr> o<esc>
vnoremap <silent>Y "yy <Bar> :call system('xclip',  @y)<CR>

cnoremap ww execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!
cnoremap wh execute 'silent! !pandoc -f markdown -t html % -o ~/html/public/%:t:r.html' <bar> redraw!
iabbr udpate update
iabbr mian main

filetype plugin indent on    " required
syntax on

colorscheme gruvbox

set selection=exclusive
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
set conceallevel=3
if version >= 802
    set completeopt+=popup
endif
set background=dark
hi Normal guibg=NONE ctermbg=NONE
set list!
"仅仅当系统不支持 unicode 字符时才使用 ascii 字符
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars='tab:» ,trail:·,extends:#,nbsp:.'
else
    let &listchars='tab:> ,trail:.,extends:<,nbsp:.'
endif

if has('gui_running')
    if has('Win32')
        set guifont=FiraCode_Nerd_Font_Mono:h11
        set guioptions-=m
        set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
        set columns=120
    else
        set guifont=FiraCode\ Nerd\ Font\ Mono\ 12
        set guioptions-=T
    endif
elseif $SSH_CONNECTION
    colorscheme industry
endif

if has("autocmd")
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    autocmd BufWritePre *.vbs,*.bat,*.cmd setlocal fileformat=dos fenc=gbk tw=0
    autocmd BufWritePre *.nsi setlocal bomb fenc=utf8

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
    "autocmd FileType perl,php :syntax enable
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
    if exists('g:append_space_after_ignore')
        for ft in g:append_space_after_ignore
            if &filetype == ft
                return ','
            endif
        endfor
    endif
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

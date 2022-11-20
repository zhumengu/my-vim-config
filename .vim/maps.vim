inoremap , <c-r>=custom#appendspaceafter(',')<cr>
inoremap <cr> <c-r>=custom#removetrailingblank()<cr>
inoremap -. ->
inoremap =. =>
inoremap <C-d> <C-[>mzyyp`zgj
nmap G Gzz
nmap n nzzzv
nmap N Nzzzv
nmap ： :
nmap <F3>                :w!<cr>
nmap <F9>                :SingleCompile<cr>
nmap <F10>               :SingleCompileRun<cr>
nmap <silent> <leader>rc :e ~/.vimrc<cr>
nmap <silent> <leader>rr :e!<cr>
nmap <silent> <leader>bn :bn<cr>
nmap <silent> <leader>bp :bp<cr>
nmap <silent> <leader>bd :bd<cr>
nmap <silent> <leader>e  :set wrap!<cr>
nmap <silent> <leader>gg :Git push origin master<cr>
nmap <silent> <leader>gs :Git<cr>
nmap <silent> <leader>s  :Rg<cr>
nmap <silent> <leader>f  :FZF<cr>
nmap <silent> <leader>b  :Buffers<cr>
nmap <silent> <leader>m  :History<cr>
nmap <silent> <leader>h  :set hlsearch!<cr>
nmap <silent> <leader>q  :q<cr>
nmap <silent> <leader>rt :Autoformat<cr>
nmap <silent> <leader>t  :NERDTreeFocus<cr>
nmap <silent> <leader>w  :w!<cr>
nmap <silent> <leader>c  :SyntasticToggleMode<cr>
vmap /                   :Tabularize /
cnoremap ww execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!
cnoremap wh execute 'silent! !pandoc -f markdown -t html % -o ~/html/public/%:t:r.html' <bar> redraw!

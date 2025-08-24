if exists('g:loaded_custom')
  finish
endif
let g:loaded_custom = 1

function! CN_SPACE() range
    let r =  'silent!' . join([a:firstline, a:lastline], ',')
    exe l:r . 's/\%([\u4e00-\u9fff]\)\@<=\s*\(\w\+\)/ \1/g'
    exe l:r . 's/\(\w\+\)\s*\%([\u4e00-\u9fff]\)\@=/\1 /g'
endfunction

" Work out whether the line has a comment then reverse that condition...
function! custom#togglecomment ()
    " What's the comment character???
    let comment_char = exists('b:cmt') ? b:cmt : '#'

    " Grab the line and work out whether it's commented...
    let currline = getline(".")

    " If so, remove it and rewrite the line...
    if currline =~ '^' . comment_char
        let repline = substitute(currline, '^' . comment_char, "", "")
        call setline(".", repline)

    " Otherwise, insert it...
    else
        let repline = substitute(currline, '^', comment_char, "")
        call setline(".", repline)
    endif
endfunction

" Toggle comments down an entire visual selection of lines...
function! custom#toggleblock () range
    " What's the comment character???
    let comment_char = exists('b:cmt') ? b:cmt : '#'

    " Start at the first line...
    let linenum = a:firstline

    " Get all the lines, and decide their comment state by examining the first...
    let currline = getline(a:firstline, a:lastline)
    if currline[0] =~ '^' . comment_char
        " If the first line is commented, decomment all...
        for line in currline
            let repline = substitute(line, '^' . comment_char, "", "")
            call setline(linenum, repline)
            let linenum += 1
        endfor
    else
        " Otherwise, encomment all...
        for line in currline
            let repline = substitute(line, '^\('. comment_char . '\)\?', comment_char, "")
            call setline(linenum, repline)
            let linenum += 1
        endfor
    endif
endfunction

command! -range CNSPACE <line1>,<line2>call CN_SPACE()

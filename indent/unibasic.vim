" Vim indent file
" Language:    UniBasic
" Maintainer:  Nivethan
" Created:     28 Mar 2022
" Last Change: 28 Mar 2022
"

if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal indentexpr=GetUnibasicIndent(v:lnum)
setlocal indentkeys&

let b:undo_indent = 'setlocal indentexpr< indentkeys<'

if exists("*GetUnibasicIndent")
    finish
endif

" ________________________________________________________________
function! s:GetPrevNonCommentLineNum( line_num )
    " Skip lines starting with a comment
    let SKIP_LINES = '\s*\*'

    let nline = a:line_num
    while nline > 0
        let nline = prevnonblank(nline-1)
        if getline(nline) !~? SKIP_LINES
            break
        endif
    endwhile

    return nline
endfunction

function! StartsWith(string, substring) 
    return string =~ '^\s*' + string
endfunction

function! GetUnibasicIndent( line_num )
    let this_codeline = getline( a:line_num )
    let prev_codeline_num = s:GetPrevNonCommentLineNum( a:line_num )
    let prev_codeline = getline( prev_codeline_num )
    let indnt = indent( prev_codeline_num )

    if this_codeline =~ '^\s*\*'
        return 0
    endif

    if this_codeline =~ ':\s*NULL$'
        return 0
    endif

    if prev_codeline =~ ':\s*NULL$'
        return indnt + shiftwidth()
    endif

    if prev_codeline =~ '^\s*CASE\s'
        return indnt + shiftwidth()
    endif

    if this_codeline =~ '^\s*CASE\s'
        if prev_codeline =~ '^\s*BEGIN CASE$'
            return indnt + shiftwidth()
        else 
            return indnt - shiftwidth()
        endif
    endif

    if this_codeline =~ '^\s*END CASE$'
        return indnt - shiftwidth() - shiftwidth()
    endif

    if prev_codeline =~ '^\s*IF'
        if prev_codeline =~ '.*THEN$'
            return indnt + shiftwidth()
        else 
            return indnt
        endif
    endif

    if prev_codeline =~ '^\s*\(LOOP\|UNTIL\|.*ELSE$\|.*\sDO$\|.*BEGIN CASE$\)'
        return indnt + shiftwidth()
    endif

    if this_codeline =~ '^\s*\(EQU\|COMMON\)\s'
        return shiftwidth()
    endif

    if this_codeline =~ '^\s*\(UNTIL\|REPEAT\|END$\|END ELSE$\)'
        return indnt - shiftwidth()
    endif

    return indnt
endfunction


setlocal indentexpr=TestalgoIndent()

function! TestalgoIndent()
    let line = getline(v:lnum)
    let previousNum = prevnonblank(v:lnum-1)
    let nextNum = prevnonblank(v:lnum+1)
    let previous = getline(previousNum)
    let next = getline(nextNum)

    if previous =~ "^var$"
        return indent(previousNum) + &tabstop
    endif

    if previous =~ "alors" && previous !~ "finsi" && line !~ "finsi"
        call append(line(1), 'finsi')
        return indent(previousNum) + &tabstop
    endif

    if previous =~ "alors" && previous !~ "finsi" && line !~ "finsi" && line !~ "alors"
        return indent(previousNum) + &tabstop
    endif



    if previous =~ "tantque \(.*\)$" && previous !~ "fintantque" && line !~ "fintantque" && line !~ "tantque \(.*\)$"
        return indent(previousNum) + &tabstop
    endif

    if previous =~ "repeter" && previous !~ "finrepeter" && line !~ "finrepeter" && line !~ "repeter"
        return indent(previousNum) + &tabstop
    endif

    if previous =~ "pas .*" && previous !~ "finpour" && line !~ "finpour" && line !~ "pas .*"
        return indent(previousNum) + &tabstop
    endif
endfunction

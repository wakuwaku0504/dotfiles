" virtualenvのとき
if exists("$VIRTUAL_ENV")
    if !empty(glob("$VIRTUAL_ENV/bin/python3"))
        let g:python3_host_prog = substitute(system("which python"), '\n', '', 'g')
    else
        let g:python_host_prog = substitute(system("which python"), '\n', '', 'g')
    endif
endif


" Note that {%extends, {%block, {%if and {%for match both htmljinja and 
" htmldjango
let s:selectregexs={
    \'htmljinja':  '\{\%\s*(extends|block|macro|set|if|for|include|trans)>',
    \'mako':       '\<\%(def|inherit)',
    \'genshi':     'xmlns:py|py:(match|for|if|def|strip|xmlns)',
\}
function! s:SelectTemplates()
    " I know about items() function, but this variant will make it easier to add 
    " an iteration over ordered list which is the only way to reliably put 
    " htmldjango before htmljinja
    for type in keys(s:selectregexs)
        let regex=s:selectregexs[type]
        if search('\v'.regex.'%<50l', 'nw')
            return type
        endif
    endfor
    return 'html'
endfunction

autocmd BufNewFile,BufRead *.html,*.htm let &filetype=<SID>SelectTemplates()


" Description: Run buf format.

function! ale#fixers#buf_format#Fix(buffer) abort
    return {
    \   'command': 'buf format %s',
    \}
endfunction

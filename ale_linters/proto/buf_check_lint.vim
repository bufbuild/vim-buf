" Description: run buf check lint

function! ale_linters#proto#buf_check_lint#GetCommand(buffer) abort
  return 'buf check lint --file %s'
endfunction

call ale#linter#Define('proto', {
    \   'name': 'buf-check-lint',
    \   'lint_file': 1,
    \   'output_stream': 'stdout',
    \   'executable': 'buf',
    \   'command_callback': 'ale_linters#proto#buf_check_lint#GetCommand',
    \   'callback': 'ale#handlers#unix#HandleAsError',
    \})

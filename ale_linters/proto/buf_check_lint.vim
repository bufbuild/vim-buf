" Description: run buf check lint

call ale#linter#Define('proto', {
\   'name': 'buf-check-lint',
\   'lint_file': 1,
\   'output_stream': 'stdout',
\   'executable': 'buf',
\   'command': 'buf check lint --file %s',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})

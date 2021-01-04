" Description: Run buf lint.

call ale#linter#Define('proto', {
\   'name': 'buf-lint',
\   'lint_file': 1,
\   'output_stream': 'stdout',
\   'executable': 'buf',
\   'command': 'buf lint --path %s',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})

" Description: Run buf check lint.
"
" This is deprecated. Switch to the buf-lint linter instead.

call ale#linter#Define('proto', {
\   'name': 'buf-check-lint',
\   'lint_file': 1,
\   'output_stream': 'stdout',
\   'executable': 'buf',
\   'command': 'buf lint %s#include_package_files=true',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})

# vim-buf

This provides Vim integration for [Buf](https://github.com/bufbuild/buf) via the [ALE](https://github.com/dense-analysis/ale) lint engine.

## Usage

Buf must be installed.

Using [vim-plug](https://github.com/junegunn/vim-plug), add the following to your `.vimrc`:

```vim
Plug 'dense-analysis/ale'
Plug 'bufbuild/vim-buf'
let g:ale_linters = {
\   'proto': ['buf-check-lint',],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1
```

This will result in individual files being linted on save via `buf check lint --path`. Note that
some lint checkers are dependent on checking multiple files at once, for example the lint checkers
in the `PACKAGE_AFFINITY` category, so we still recommend your CI setup runs `buf check lint`.

Buf will be executed in your current directory, which results in your configuration being read
from your current directory.

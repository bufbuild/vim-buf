# vim-buf

The `buf lint` and `buf format` commands have been integrated into the
[ALE](https://github.com/dense-analysis/ale) lint engine directly. You
don't need to manually install the `bufbuild/vim-buf` plugin anymore.

Read the following [usage](#usage) guide for details on how to use these
features with ALE directly.

## Usage

Buf must be installed.

Using [vim-plug](https://github.com/junegunn/vim-plug), add the following to your `.vimrc`:

```vim
Plug 'dense-analysis/ale'
let g:ale_linters = {
\   'proto': ['buf-lint'],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1

let g:ale_fixers = {
\   'proto': ['buf-format'],
\}
let g:ale_fix_on_save = 1
```

This will result in individual files being linted on save via `buf lint --path`. Note that
some lint rules are dependent on checking multiple files at once, for example the lint rules
in the `PACKAGE_AFFINITY` category, so we still recommend your CI setup runs `buf lint`.

This will also result in individual files being automatically formatted on save via `buf format -w`.
For more information, check out Buf's formatting [style guide](https://docs.buf.build/format/style).

Buf will be executed in your current directory, which results in your configuration being read
from your current directory.

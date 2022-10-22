## vim-lsp-settings-adapter

#### What?
This vim plugin allows using [mattn/vim-lsp-settings](https://github.com/mattn/vim-lsp-settings) with [yegappan/lsp](https://github.com/yegappan/lsp) to easily install and manage LSP servers.

Its basically emulating the parts of `vim-lsp` that are required by `vim-lsp-settings` and sending the commands to `lsp` instead.

#### How?
To use it, simply install all three plugins together. E.g. using `Plug`, add this to your `vimrc` Plug section:

```
Plug 'yegappan/lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'normen/vim-lsp-settings-adapter'
```

Now you can install and run the language server for the current file type by running `:LspInstallServer` - easy as that.

#### Caveats
Quick and dirty hack, some servers don't work that well, some status features of `vim-lsp-settings` don't work.

Confirmed to work:
- c/cpp (clang/ccls)
- typescript/javascript (typescript-language-server)
- golang (gopls)
- rust (rust-analyzer)
- vimscript (vim-language-server)

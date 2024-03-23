## Pre Configuration
- Install [nerd fonts](https://www.nerdfonts.com/).
- Install [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package), for linux it's recommended to use AppImage.

## Installation
Once neovim is installed place the `nvim` file in `~/.config` directory.

## Plugins
- Theme:
    - [catppuccin](https://github.com/catppuccin/catppucci)
- File Explorer:
    - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Code Parser:
    - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Framework for finding, preview, filtering across different use cases.
    - [telescope](https://github.com/nvim-telescope/telescope.nvim)
- For commenting & un-commenting
    - [Comment.nvim](https://github.com/numToStr/Comment.nvim), lua to comment stuff:
- Cycle through TODO comments.
    - [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- Status line:
    - [lualine](https://github.com/nvim-lualine/lualine.nvim)
- Code folding, bracket/quote auto-close:
    - [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo), for folding.
    - [autoclose.nvim](https://github.com/m4xshen/autoclose.nvim), autocloses braces/quotes.
    - [nvim-surround](https://github.com/kylechui/nvim-surround), put/remove braces arround selected text.
- git stuff:
    - [vim-fugitive](https://github.com/tpope/vim-fugitive), execute git commands from nvim.
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim), signs for modification.
- LSP configuration.
    - [mason](https://github.com/williamboman/mason.nvim)
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    - [goto-preview](https://github.com/rmagatti/goto-preview)
    - [autoclose](https://github.com/m4xshen/autoclose.nvim), autoclose braces & quotes.
- Client server to interact with LSP.
    - [none-ls](https://github.com/nvimtools/none-ls.nvim)
- DAP configuration:
    - [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- Specific plugin for go
    - [go.nvim](https://github.com/ray-x/go.nvim)

## Custom Keymapping
Custom keymapppings for different operations can be found [here](docs/keymapping.md).
For default keymappings please refere to official [neovim docs](https://neovim.io/doc/user/map.html) and the official documentations of respective plugins.

## Go binaries to be installed
Here's the list of the [go-tools](docs/go-tools.md) that are to be installed for all the go dependent plugins to work properly.

If these are not installed when setting up nvim, just execute the go-tools.sh to install them all.
```shell
bash go-tools.sh
```

## NVIM-Tree
Source: https://docs.rockylinux.org/books/nvchad/nvchad_ui/nvimtree/
- g?: to get list of shortcuts
- \<C-n\>: open file tree
- \<C-h\>: move to the tree pane
- \<C-l\>: move to the editor pane
- \<C-k\>: view file details
- \<CR\> or o: open file
- \<TAB\>: open while keeping the cursor in nvim-tree
- \<C-v\>: open in vertical split
- \<C-x\>: open in horitxontal split
- \<leader\>bq: close current buffer
- \<leader\>bn: go to next buffer
- \<leader\>bp: go to previous buffer
- a: to add a new file or a folder (To add a folder end its name with `/`)
- d: delete
- c: copy
- x: cut
- p: paste
- y: copy only the file name
    - Y: copy the relative path
    - gy: copy absolute path
- r: rename
- f: filter

## Telescope
- \<leader\>ff: fuzzy find file
- \<leader\>fg: live_grep
- \<leader\>fa: live_grep with args
- \<leader\>fb: view active buffers
- \<leader\>fh: view help for different commands

## Commenting
- gcc: toggle line comment in normal mode
- gbc: toggle block comment in normal mode
- gc: toggle line comment in visual mode
- gb: toggle block comment in visual mode

## TODO-Comments
- <leader>tl: list all TODO comments in telescope

## Folding
- \<leader\>za: toggle open/close a particular fold
- \<leader\>zA: toggle open/close all the folds
- \<leader\>zc: close fold under cursor
- \<leader\>zC: close all folds
- \<leader\>zo: open folder under cursor
- \<leader\>zO: open all folds
- \<leader\>zr: reduce folding one at a time across the file
- \<leader\>zR: open all folds
- \<leader\>zm: fold one at a time across the file
- \<leader\>zM: close all folds
- \<leader\>zv: open just enough to make the line with the curson not folded
- [z: move to the start of the current fold
- z]: move to the end of the current fold
- zj: move down to the start of next fold
- zk: move up to the end of the previous fold

## Aerial Tag Bar
- \<leader\>a: toggle tag bar
- \{: jump to previous function definition
- \}: jump to next function definition

## Git-Stuff:
- \<leader\>gd: git diff
- \<leader\>gg: git graph
- \<leader\>gs: git status
- \<leader\>gb: git blame pane
- \<leader\>gt: git blame for current line
- \<leader\>ga: git add
- \<leader\>gc: gitc commit
- \<leader\>gp: preview hunk

## Terminal
- <leader>tt: open terminal or toggle terminal
- <leader>tv: open a vertical terminal
- <leader>tf: open floating terminal
- <leader>tg: toggle lazy git
- <C-t>: toggle terminal in terminal mode
- <C-q>: exit terminal in terminal mode
- <C-h>, <C-k>, <C-l>, <C-j>: navigate over terminal
- <C-w>: enter normal mode in terminal

## Autocomplete
- \<C-j\>: select next item
- \<C-k\>: select prev item
- \<C-b\>: scroll docs down
- \<C-f\>: scroll docs up
- \<C-Space\>: complete
- \<C-e\>: abort
- \<CR\>: select

## LSP
- K: hover action
- \<leader\>rn: smart rename every instance of the variable
- \<leader\>bd: take to the definition
- \<leader\>br: list the references
- \<leader\>ca: open code actions
- \<leader\>cf: format code 

## go.nvim specific keybindings
- \<leader\>ce: Add the `if error` block
- \<leader\>cag: Add json tags for the structs
- \<leader\>crg: Remove json tags
- \<leader\>ct: Add test for a particular function
- \<leader\>crt: Run all test
- \<leader\>cfrt: Run test for a particular function
- \<leader\>cat: Add all the unit tests
- \<leader\>cfs: Fill struct fields

For more Go functionalities, just type :Go and hit <Tab>.
Keymaps created only for the most used functionalities.

## nvim-surround
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

## DAP
- \<leader\>dt: toggle breakpoint
- \<leader\>dc: continue to next
- \<leader\>do: step over
- \<leader\>dh: toggle hide/show dap-ui
- \<leader\>dx: terminate debugging

## Misc
- To update the plugins run command `:Lazy` and hit `U`.
- To update LSPs run command `:Mason` and hit `U`.

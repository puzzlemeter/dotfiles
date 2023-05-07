# Cheatsheet

Cheatsheet of the keymaps and basic controls of vim.

## Nomal mode

C-w + hjkl can move cursor

<leader> + e can toggle tree
Buffer control using below
C-j
C-k
C-x

`:ls` list buffers

`q:` list histories

## Visual mode

### Comment out operation

vj+gc or Vj+gc
(visual mode selection, than, gc)

## Highlight

The * key will highlight all occurrences of the word that is under the cursor.

`:noh` clear highlight.

## yank

yanking range of lines

`:10,20y<enter>`

yank all lines to system clipboard

`:%y+`


## fzf.vim

`:Buffer`

`:Files`

`:Rg`

`:Colors` list and change colorscheme

`:colors` shows current colorscheme

## tpope/vim-surround

`cs"'` : change surrond from " to '
`ds[`  : delete the surronded []
`ys$"` : normal mode, cursor to end of line and surrond with " 
`v$S"` : visual mode, cursor to end of line and surrond with "

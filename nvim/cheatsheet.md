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

`~` change case

`ZZ` save and close

<C-W> + s split horizontal (command :sp)
<C-W> + v split vertical (command :vs)

## Visual mode

### Comment out operation

vj+gc or Vj+gc
(visual mode selection, than, gc)

## Highlight

The \* key will highlight all occurrences of the word that is under the cursor.

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
`ds[` : delete the surronded []
`ys$"` : normal mode, cursor to end of line and surrond with "
`v$S"` : visual mode, cursor to end of line and surrond with "

## You don't need multi cursor

https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db

Use `cgn` (c + gn), then use `n`, `.` to repeat the process.

Or, use <C-V>, visual block mode if it aligns together.
Then scroll down to block the targets. Use I (<S-i>) to insert to front. After the word modified, press <ESC>, then the other lines will be applied.

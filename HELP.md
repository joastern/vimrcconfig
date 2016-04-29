# vimrc supported commands/keyboard shortcuts #

Help file for `vimrc` package set. Type `Ctrl+W` (or press the X at the top
right) to close.

## Commands ##

Run these commands in normal mode.

* `:Vimrc`:			Opens this help file
* `:VimrcUpdate`:	Updates (through git pull) the vimrc package set

## Keyboard Shortcuts ##

As always, with OS X, replace the `Ctrl` key with the `Cmd` key. Also, mouse
support is inconsistent with some versions of OSX, if it isn't working, try
`Ctrl+Click`.

### Standard Set ###

* `Ctrl+A`: 		select all
* `Ctrl+C`: 		copy selection (or current line) to clipboard
* `Ctrl+F`: 		find, enter phrase then enter to search, cycle through with
  `n` and `N` (next/prev)
* `Ctrl+Q`: 		quit program, will fail and warn if not saved (run `:q!` to
  force quit) (inconsistent behavior)
* `Ctrl+S`: 		save
* `Ctrl+V`: 		paste from clipboard
* `Ctrl+W`: 		save and quit
* `Ctrl+X`: 		cut selection to clipboard
* `Ctrl+R`: 		redo (not modified)
* `Ctrl+Z`: 		undo

### Tab Functionality ###

Run `vim FILE1 FILE2 [FILE3 ...]` to open multiple files in vim, all in tabs.

* `Ctrl+T`:			open new tab, enter filename/path and then enter to open
* `Ctrl+W`:			save and close current tab
* `Ctrl+->`:		move to next tab (note that `->` refers to rightarrow)
* `Ctrl+<-`:		move to prev tab

### Custom/Plugin Specific ###

* `F3`:				autoindent
* `F4`:				view directory contents
* `F5`:				show tree of edits (useful for undo)
* `F6`:				wraps selection to textwidth (justify)
* `F12`:			opens this page, same as `:Vimrc`
* `Ctrl+F12`:		updates the vimrc package set, same as `:VimrcUpdate`

## More Info ##

More info can be found at the [Bitbucket repo](http://bitbucket.org/4U6U57/vimrc).

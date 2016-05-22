# vimrc supported commands/keyboard shortcuts #

Help file for *vimrc* package set. Type `Ctrl+Q` (or press the X at the top
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
* `Ctrl+C`: 		copy selection (or current line, if not selected) to clipboard
* `Ctrl+F`: 		find (enter phrase then enter to search, cycle through
  results with `n` and `N`)
* `Ctrl+Q`: 		quit program, will fail and warn if not saved (run `:q!` to
  force quit) (inconsistent behavior)
* `Ctrl+S`: 		save
* `Ctrl+V`: 		paste from clipboard
* `Ctrl+W`: 		save and quit
* `Ctrl+X`: 		cut selection to clipboard
* `Ctrl+R`: 		redo (not modified)
* `Ctrl+Z`: 		undo

### Tab Functionality ###

Run `vim FILE1 FILE2 [FILE3 ...]` to open multiple files in separate tabs in vim.

* `Ctrl+T`:			open new tab (enter filename/path and then enter to open)
* `Ctrl+W`:			save and close current tab
* `Ctrl+Q`:       quit and close current tab (does not work for last tab open)
* `Ctrl+->`:		move to next tab (note that `->` refers to rightarrow)
* `Ctrl+<-`:		move to prev tab

### Custom/Plugin Specific ###

* `F3`:				autoindent
* `F4`:				view directory contents sidebar
* `F5`:				view edit tree sidebar (useful for undo)
* `F6`:				wraps selection (or current line, if not selected) to textwidth (justify)
* `F12`:			opens this page, same as `:Vimrc`
* `Ctrl+F12`:		updates the vimrc package set, same as `:VimrcUpdate`

## References ##

* More info can be found at the [Bitbucket repo](http://bitbucket.org/4U6U57/vimrc).
* Currently maintained by [August Valera](http://bitbucket.org/4U6U57).
* Please post an [issue](http://bitbucket.org/4U6U57/vimrc/issues/new) for feature suggestions.

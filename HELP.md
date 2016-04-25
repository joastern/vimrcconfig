# vimrc supported commands/keyboard shortcuts #

Help file for `vimrc` package set. Use `Ctrl+W` or the `X` button in the top
right corner to close.

## Release Notes ##

Tab functionality still not ideal, breaks `Ctrl+W` to save and quit (now have to
run `Ctrl+W` to save and close tab, then `Ctrl+Q` to actually quit `vim`).
Trying to figure out a way to optionally close tab without saving, currently
have to run command `:bd!`.

## Commands ##

Run these commands in normal mode.

* `:Vimrc`: 		Opens this help file
* `:VimrcUpdate`: 	Updates (through git pull) the vimrc package set

## Keyboard Shortcuts ##

As always, with OS X, replace the `Ctrl` key with the `Cmd` key. Also, mouse
support is inconsistent with some versions of OSX, if it isn't working, try
`Ctrl+Click`.

### Standard Set ###

* `Ctrl+A`: 		select all
* `Ctrl+C`: 		copy selection to vim clipboard
* `Ctrl+F`: 		find, enter phrase and then enter to search, use `n`/`p` to
  cycle through next/prev
* `Ctrl+Q`: 		quit program, will fail if no save
* `Ctrl+S`: 		save (inconsistent behavior)
* `Ctrl+V`: 		paste from vim clipboard
* `Ctrl+W`: 		save and close tab
* `Ctrl+X`: 		cut selection to vim keyboard
* `Ctrl+R`: 		redo (not modified)
* `Ctrl+Z`: 		undo

### Tab (Really Buffers) Functionality ###

Run `vim FILE1 FILE2 [FILE3 ...]` to open multiple files in vim, all in tabs.

* `Ctrl+T`: 		open new tab, enter filename/path and then enter to open
* `Ctrl+->`: 		move to next tab (note that `->` refers to rightarrow)
* `Ctrl+<-`: 		move to prev tab

### Custom/Plugin Specific ###

* `F3`: 			autoindent
* `F4`: 			view directory contents
* `F5`: 			show tree of edits (useful for undo)
* `F6`: 			wraps selection to textwidth (justify)
* `Ctrl+F12`: 		Updates the vimrc package set, same as `:VimrcUpdate`

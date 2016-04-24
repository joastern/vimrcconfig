# vimrc supported commands/keyboard shortcuts #

## Commands ##

* `:Vimrc`: 		Opens this help file
* `:VimrcUpdate`: 	Updates (through git pull) the vimrc package set

## Keyboard Shortcuts ##

As always, with OS X, replace the `Ctrl` key with the `Cmd` key. Also, mouse
support is inconsistent with some versions of OSX, if it isn't working, try
`Ctrl+Click`.

### Standard Set ###

* `Ctrl+C`: 		copy selection to vim clipboard
* `Ctrl+S`: 		save (inconsistent behavior)
* `Ctrl+V`: 		paste from vim clipboard
* `Ctrl+Shift+V`: 	paste from computer keyboard
* `Ctrl+W`: 		save and quit
* `Ctrl+X`: 		cut selection to vim keyboard
* `Ctrl+R`: 		redo (not modified)
* `Ctrl+Z`: 		undo

### Custom/Plugin Specific ###

* `F3`: 			autoindent
* `F4`: 			view directory contents
* `F5`: 			show tree of edits (useful for undo)
* `F6`: 			wraps selection to textwidth (justify)
* `Ctrl+F12`: 		Updates the vimrc package set, same as `:VimrcUpdate`

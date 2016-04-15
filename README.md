# vimrc #

`vimrc` is the name for the configuration file of the very cool terminal text
editor, `vim`. It modifies the behavior of the `vim` program itself through the
use of included settings, and plugins on GitHub.

## Features ##

* Line numbering
* Scroll support: Mousewheel, pgup/pgdn buttons
* Click to move cursor (Mac unstable, might need to use `Cmd+Click`)
* Drag to select text (Mac unstable, might need to use `Cmd+Click`)
* `Ctrl+C` (copy), `Ctrl+S` (save), `Ctrl+V` (paste), `Ctrl+W` (save and quit), `Ctrl+X` (cut), `Ctrl+Y` (redo), `Ctrl+Z` (undo) work as expected
* `F3` to autoformat
* `F4` to view directory contents
* `F5` to show tree of edits
* Enforced textwidth of 80 characters for code
* Spellcheck for text files
* Git diff display

## Requirements ##

* Existing installation of `vim`
* `bash` or other Unix shell equivalent (possible to install, but different commands)
* `git` support, for downloading this repo (possible to install, but download manually)

## Setup ##

Download and install the config files and plugins by running the following:

```
#!bash

git clone https://bitbucket.org/4U6U57/vimrc ~/bin/vimrc
cd ~/bin/vimrc
make
```

As soon as it installs, you should be able to run vim as usual, and it should
look a *lot* differently (hopefully in a good way).

After installation, the `~/vimrc` directory is no longer necessary, but is still
useful. For instance, you can make your own modifications to the `vimrc` source,
and then apply them by running `make install`. Deleting the directory will not
affect functionality.

### Updating ###
The easiest way to update is by pressing `Ctrl+F12` while in normal mode in Vim.
If it doesn't work, you might be running an older version of `vimrc`, in which
case you will have to run `make` on the `vimrc folder`, or follow normal
installation instructions ot update.

### Additional Options ###

Note the following options when running `make` on this program.

* `make`: default, installs vimrc and plugins. **This will delete all currently installed plugins!**
* `make install pluginstall`: installs vimrc and plugins, leaving any existing plugins intact
* `make install`: installs vimrc only **Might have unexpected behavior when attempting to use plugins**

### Removal ###

At any time, you can revert to the default version of vim by running `make
spotless` in the `vimrc` directory (you may have to follow the installation
instructions to get it, if you have deleted it from your computer). Note that
this will also clear all plugins, including those that you might have installed
yourself.

### Plugins ###

Here is a list of the currently enabled plugins:

* [tpope/phatogen](https://github.com/tpope/vim-pathogen): Installs other plugins **REQUIRED**
* [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs): Auto add matching brackets
* [othree/html5.vim](https://github.com/othree/html5.vim): HTML5 support
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) : Directory sidebar
* [ervandew/supertab](https://github.com/ervandew/supertab): Autocomplete with tab key
* [mbbill/undotree](https://github.com/mbbill/undotree): Undo sidebar
* [bling/vim-airline](https://github.com/bling/vim-airline): Fancy bottom bar
* [Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat): Official autoformat
* [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized): Cool colortheme
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter): Git +/-
* [elzr/vim-json](https://github.com/elzr/vim-json): JSON support

## Credit ##

Credit to the original version of the `.vimrc` file goes to UCSC **CMPE 110** Winter 2015.

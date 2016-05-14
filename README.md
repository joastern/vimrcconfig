# vimrc #

*vimrc* is the name for the configuration file of the very cool terminal text
editor, *vim*. It modifies the behavior of the *vim* program itself through the
use of included settings, keybindings, and plugins on GitHub.

## Features ##

Below are a few of the more general features added to *vim* with this software:

* Line numbering
* Scroll support: Mousewheel, pgup/pgdn buttons
* Click to move cursor (Mac unstable, might need to use `Cmd+Click`)
* Drag to select text (Mac unstable, might need to use `Cmd+Click`)
* Enforced textwidth of 80 characters for code readability
* Spellcheck for text files
* Git diff display

It also adds a variety of intuitive keyboard shortcuts, documented in greater
detail in the [HELP.md](./HELP.md) page.

## Requirements ##

Besides the installation of *vim*, the below requirements are useful to have and
make installation easier, but are not strict requirements.

* Existing installation of *vim*
* *bash* or other Unix shell equivalent
* *make* utility
* *git* support, for downloading this repo

## Distribution ##

*vimrc* is distributed (installed and updated) through git, specifically through
this repo. All updates can be done through vim itself, by running
`:VimrcUpdate`.

### Installation ###

You can install *vimrc* in the default location by running the following 3 lines
in a terminal (location independent):

```
#!bash

git clone https://bitbucket.org/4U6U57/vimrc ~/bin/vimrc
cd ~/bin/vimrc
make
```

### Running vimrc ###

*vimrc* is just a configuration of *vim*, so running it is identical to running
`vim` normally.

For more information on the functionalities of *vimrc*, either check out the
[HELP.md](./HELP.md) file, online or by running `:Vimrc` in normal mode.

### Updates ###

Updates can be applied through *vim* itself, by running the command
`:VimrcUpdate` or keyboard shortcut `Ctrl+F12` in normal mode.

*vimrc* does not automatically update, to preserve changes you may have made to
the configuration. Update frequently to add additional functionality and
patches.

### Removal ###

*vimrc* can be easily uninstalled by navigating to the install directory
`~/bin/vimrc` and running `make spotless`. Note that this will not delete actual
install directory, only decoupling it from the *vim* program. Delete the
install directory afterwards with the command `rm -rf ~/bin/vimrc`.

The installation directory can be deleted at any time; it is not necessary to
run the program (although it is necessary to reference [HELP.md](./HELP/md)).
Updating *vimrc* redownloads the install directory in the default location.

Reinstallation can be done by running `make` in the install directory. If the
installation directory is not present, then you will have to go through the
normal installation process.

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
* [octol/vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight): C++ syntax
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter): Git +/-
* [elzr/vim-json](https://github.com/elzr/vim-json): JSON support

## References ##

* Credit to the original version of the `.vimrc` file goes to UCSC *CMPE 110* Winter 2015
* Special thanks to Isaak Cherdak and Sargis Yonan for feedback
* Currently maintained by [August Valera](http://bitbucket.org/4U6U57).
* Please post an [issue](http://bitbucket.org/4U6U57/vimrc/issues/new) for feature suggestions.

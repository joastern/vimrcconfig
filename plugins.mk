# plugins.mk
# Plugins for vim

ENABLED=pathogen # important, needed for all plugins

# OPTIONAL PLUGINS BELOW
# Uncomment those you want enabled
ENABLED+= auto-pairs # Auto add matching brackets
ENABLED+= html5.vim # HTML5 support
# ENABLED=$(ENABLED) nerdtree nerdtree-git-plugin # Directory browsing toolbar
ENABLED+= supertab # Autocomplete with tab key
ENABLED+= undotree # Undo sidebar
ENABLED+= vim-airline # Fancy bottom bar
ENABLED+= vim-autoformat # Official autoformat
ENABLED+= vim-colors-solarized # Cool colortheme
ENABLED+= vim-gitgutter # Git +/-
ENABLED+= vim-json # JSON support

VIMBIN=~/.vim
VIMBUN=$(VIMBIN)/bundle

plugdefault : pluginstall

# Installs newly enabled plugins
plugupgrade : $(ENABLED)

# Same as above, but also removes all other plugins
pluginstall : plugclear plugupgrade

# Removes all plugins
plugclear :
	rm -rf $(VIMBUN)

.PHONY : plugdefault plugugrade pluginstall plugclear

# Plugin download information below

pathogen :
	mkdir -p $(VIMBIN)/autoload $(VIMBUN)
	curl -LSso $(VIMBIN)/autoload/$@.vim https://tpo.pe/$@.vim

auto-pairs :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/jiangmiao/$@.git $(VIMBUN)/$@

html5.vim :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/othree/$@.git $(VIMBUN)/$@

nerdtree :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/scrooloose/$@.git $(VIMBUN)/$@

nerdtree-git-plugin :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/Xuyuanp/$@.git $(VIMBUN)/$@

supertab :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/ervandew/$@.git $(VIMBUN)/$@

undotree :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/mbbill/$@.git $(VIMBUN)/$@

vim-airline :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/bling/$@.git $(VIMBUN)/$@

vim-autoformat :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/Chiel92/$@.git $(VIMBUN)/$@

vim-colors-solarized :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/altercation/$@.git $(VIMBUN)/$@

vim-gitgutter :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/airblade/$@.git $(VIMBUN)/$@

vim-json :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/elzr/$@.git $(VIMBUN)/$@

PLUGINS=""
PLUGINS+= auto-pairs
PLUGINS+= html5.vim
PLUGINS+= nerdtree nerdtree-git-plugin
PLUGINS+= supertab
PLUGINS+= undotree
PLUGINS+= vim-airline
PLUGINS+= vim-autoformat
PLUGINS+= vim-colors-solarized
PLUGINS+= vim-gitgutter
PLUGINS+= vim-json

.PHONY : $(PLUGINS) 

SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen auto-pairs undotree supertab vim-airline vim-colors-solarized vim-gitgutter #$(OPTION)
# Uncomment above to enable optional plugins
OPTION=nerdtree nerdtree-git-plugin
VIMBIN=~/.vim
VIMBUN=$(VIMBIN)/bundle

default : pull
	make install

install : $(DEPEND) $(OUTPUT)
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(SOURCE)
	cp $(SOURCE) $@

pathogen :
	mkdir -p $(VIMBIN)/autoload $(VIMBUN)
	curl -LSso $(VIMBIN)/autoload/$@.vim https://tpo.pe/$@.vim

# Auto add matching brackets
auto-pairs :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/jiangmiao/$@.git $(VIMBUN)/$@

# Adds directory browsing toolbar (change .vimrc as well)
nerdtree :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/scrooloose/$@.git $(VIMBUN)/$@

nerdtree-git-plugin :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/Xuyuanp/$@.git $(VIMBUN)/$@

# Autocomplete with tab key
supertab :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/ervandew/$@.git $(VIMBUN)/$@

# Adds undo sidebar
undotree :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/mbbill/$@.git $(VIMBUN)/$@

# Adds fancy bottom bar
vim-airline :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/bling/$@.git $(VIMBUN)/$@

# Adds cool colortheme
vim-colors-solarized :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/altercation/$@.git $(VIMBUN)/$@

# Adds git sidebar +/-
vim-gitgutter :
	rm -rf $(VIMBUN)/$@
	git clone https://github.com/airblade/$@.git $(VIMBUN)/$@

clean :
	rm -rf $(OUTPUT)

spotless : clean 

uninstall : spotless
	rm -rf ~/$(OUTPUT) $(VIMBIN)

.PHONY : default install clean spotless $(DEPEND) $(OPTION)

include git.mk

SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen auto-pairs supertab vim-airline vim-colors-solarized vim-gitgutter #$(OPTION)
# Uncomment above to enable optional plugins
OPTION=nerdtree nerdtree-git-plugin
VIMBIN=~/.vim

default : pull install

install : $(OUTPUT)
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(DEPEND) $(SOURCE)
	cp $(SOURCE) $@

pathogen :
	mkdir -p $(VIMBIN)/autoload $(VIMBIN)/bundle
	curl -LSso $(VIMBIN)/autoload/$@.vim https://tpo.pe/$@.vim

# Auto add matching brackets
auto-pairs :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/jiangmiao/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

# Adds directory browsing toolbar (change .vimrc as well)
nerdtree :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/scrooloose/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

nerdtree-git-plugin :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/Xuyuanp/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

# Autocomplete with tab key
supertab :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/ervandew/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

# Adds fancy bottom bar
vim-airline :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/bling/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

# Adds cool colortheme
vim-colors-solarized :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/altercation/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

# Adds git sidebar +/-
vim-gitgutter :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/airblade/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

clean :
	rm -rf $(OUTPUT) $(DEPEND) $(OPTION)

spotless : clean 

uninstall : spotless
	rm -rf ~/$(OUTPUT) $(VIMBIN)

.PHONY : default install clean spotless $(DEPEND) $(OPTION)

include git.mk

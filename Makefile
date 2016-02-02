SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen vim-airline vim-colors-solarized #$(OPTION) 
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

nerdtree :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/scrooloose/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

nerdtree-git-plugin :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/Xuyuanp/nerdtree-git-plugin
	mv -f $@ $(VIMBIN)/bundle/$@

vim-airline :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/bling/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@

vim-colors-solarized :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/altercation/$@.git
	mv -f $@ $(VIMBIN)/bundle/$@


clean :
	rm -rf $(OUTPUT) $(DEPEND) $(OPTION)

spotless : clean

uninstall : spotless
	rm -rf ~/$(OUTPUT) $(VIMBIN)

.PHONY : default install clean spotless $(DEPEND) $(OPTION)

include git.mk

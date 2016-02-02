SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen nerdtree nerdtree-git-plugin vim-airline
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

clean :
	rm -rf $(OUTPUT) $(DEPEND)

spotless : clean

uninstall : spotless
	rm -rf ~/$(OUTPUT) $(VIMBIN)

.PHONY : default install clean spotless $(DEPEND)

include git.mk

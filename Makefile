SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen nerdtree vim-airline
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
	mv $@ $(VIMBIN)/bundle/$@


vim-airline :
	rm -rf $@ $(VIMBIN)/bundle/$@
	git clone https://github.com/bling/$@.git
	mv $@ $(VIMBIN)/bundle/$@

clean :
	rm -f $(OUTPUT)

spotless : clean

.PHONY : default install clean spotless $(DEPEND)

include git.mk

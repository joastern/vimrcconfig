SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen nerdtree vim-airline
VIMBIN=~/.vim

default : install spotless

install : $(OUTPUT)
	cp $(OUTPUT) ~

$(OUTPUT) : $(DEPEND) $(SOURCE)
	cp $(SOURCE) $@

pathogen :
	mkdir -p $(VIMBIN)/autoload $(VIMBIN)/bundle
	curl -LSso $(VIMBIN)/autoload/$@.vim https://tpo.pe/$@.vim

nerdtree :
	git clone https://github.com/scrooloose/$@.git
	mv $@ $(VIMBIN)/bundle/$@

vim-airline :
	git clone https://github.com/bling/$@.git
	mv $@ $(VIMBIN)/bundle/$@

clean :

spotless : clean
	rm -f $(OUTPUT)

.PHONY : default install clean spotless

include git.mk

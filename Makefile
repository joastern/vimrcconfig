SOURCE=vimrc
OUTPUT=.vimrc
DEPEND=pathogen

default : install spotless

install : $(OUTPUT)
	cp $(OUTPUT) ~

$(OUTPUT) : $(DEPEND) $(SOURCE)
	cp $(SOURCE) $@

pathogen :
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/$@.vim https://tpo.pe/$@.vim

clean :

spotless : clean
	rm -f $(OUTPUT)

.PHONY : default install clean spotless

include git.mk

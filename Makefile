SOURCE=vimrc
OUTPUT=.vimrc

default : pull
	make upgrade

upgrade : install pluginstall

install : $(OUTPUT)
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(SOURCE)
	cp $(SOURCE) $@

clean :
	rm -f $(OUTPUT)

spotless : clean plugclear

.PHONY : default install clean spotless

include git.mk
include plugins.mk

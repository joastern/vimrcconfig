SOURCE=vimrc
OUTPUT=.vimrc

default : pull
	make install

install : $(OUTPUT) pluginstall
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(SOURCE)
	cp $(SOURCE) $@

clean :
	rm -f $(OUTPUT)

spotless : clean plugclear

.PHONY : default install clean spotless

include git.mk
include plugins.mk

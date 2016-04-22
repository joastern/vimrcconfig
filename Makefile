SOURCE=vimrc
OUTPUT=.vimrc

default : pull
	make upgrade

upgrade : install plugdefault

install : $(OUTPUT)
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(SOURCE)
	cp $(SOURCE) $@

clean :
	rm -f $(OUTPUT)

spotless : clean plugclear
	rm -f ~/$(OUTPUT)

submit : push clean

.PHONY : default install clean spotless submit

include git.mk
include plugins.mk

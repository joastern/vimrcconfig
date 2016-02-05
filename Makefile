SOURCE=vimrc
OUTPUT=.vimrc

default : pull 
	make install

install : $(OUTPUT)
	mv -f $(OUTPUT) ~

$(OUTPUT) : $(SOURCE)
	cp $(SOURCE) $@

clean :
	rm -rf $(OUTPUT)

spotless : clean

uninstall : spotless
	rm -f ~/$(OUTPUT)

.PHONY : default install clean spotless

include git.mk

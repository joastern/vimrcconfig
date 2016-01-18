SOURCE=vimrc
OUTPUT=.vimrc

default : install spotless

install : $(OUTPUT)
	cp $< ~

$(OUTPUT) : $(SOURCE)
	cp $< $@

clean :

spotless : clean
	rm -f $(OUTPUT)

.PHONY : default install clean spotless

include git.mk

# Makefile for Git

pull :
	git $@

commit : pull
	git add --all
	git $@

log :
	git $@ --graph --oneline -10

push : commit
	git $@
	make log

.PHONY : pull commit log push

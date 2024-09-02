VALID_FILES = $(wildcard *.Makefile)

$(addprefix cat-file-, $(basename $(VALID_FILES))): cat-file-%:
	cat $*.Makefile
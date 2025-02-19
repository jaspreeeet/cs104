.PHONY : all
msti := $(wildcard ./*.txt)
two := $(notdir $(msti))
src := $(basename $(two))

cmd := less cat paste cp mv head tail cat find grep


all : $(cmd)

$(cmd) : % : %.txt

%.txt :
        @echo $* $@
        @$$(man $* > $@)
        @echo "Successfully made for $@"
~                                                                               
~                                                                               
~

DIRS=$(dir $(wildcard */makefile))

BINS=$(join $(DIRS),$(patsubst %/,%.bin,$(DIRS)))
LBRS=$(join $(DIRS),$(patsubst %/,%.lbr,$(DIRS)))

all: $(BINS)

lbr: $(LBRS)
	rm -f baseutils.lbr
	cat $(LBRS) > baseutils.lbr

$(BINS): %.bin: %.asm include/bios.inc include/kernel.inc
	ln -sf ../include $(@D)/include
	$(MAKE) -C $(@D)

$(LBRS): %.lbr: %.bin
	$(MAKE) -C $(@D) lbr

clean: FORCE
	rm -f baseutils.lbr
	for DIR in $(DIRS) ; do \
	  rm -f $$DIR/include ; \
	  $(MAKE) -C $$DIR clean ; \
	done

FORCE:

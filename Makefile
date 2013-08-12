elsrc=git-annex.el
elobj=$(elsrc:.el=.elc)

all: $(elobj)

EMACS=emacs
EMACSFLAGS=--batch --quick --no-init-file

%.elc: %.el
	$(EMACS) $(EMACSFLAGS) --eval '(byte-compile-file "$<")'

clean:
	-rm -f --verbose $(elobj)

.PHONY: all clean

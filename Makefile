all: all_src

all_src:
	$(MAKE) -C src

clean: clean_src clean_include
	rm -f *~ *.bak

clean_include:
	rm -f include/b64/*~

clean_src:
	$(MAKE) -C src clean;

distclean: clean distclean_src

distclean_src:
	$(MAKE) -C src distclean;


BINARIES = base64

# Build flags (uncomment one)
#############################
# Release build flags
CFLAGS += -O3
#############################
# Debug build flags
#CFLAGS += -g
#############################

# select a buffersize
# a larger size should be faster, but takes more runtime memory
#BUFFERSIZE = 4096
#BUFFERSIZE = 65536
BUFFERSIZE = 16777216

SOURCES = base64.cc

TARGETS = $(BINARIES)

LINK.o = g++

CFLAGS += -Werror -pedantic
CFLAGS += -DBUFFERSIZE=$(BUFFERSIZE)
CFLAGS += -I../include

CXXFLAGS += $(CFLAGS)

vpath %.h ../include/b64
vpath %.a ../src

.PHONY : clean

all: $(TARGETS) #strip

base64: libb64.a

strip:
	strip $(BINARIES) *.exe

clean: clean_VisualStudio
	rm -f *.exe* *.o $(TARGETS) *.bak *~
clean_VisualStudio:
	$(MAKE) -C VisualStudio clean

distclean: clean distclean_VisualStudio
	rm -f depend
distclean_VisualStudio:
	$(MAKE) -C VisualStudio distclean

depend: $(SOURCES)
	makedepend -f- $(CFLAGS) $(SOURCES) 2> /dev/null 1> depend

-include depend


BINARIES = decoder encoder b64dec b64enc base64
LIBRARIES = libb64.a

# Build flags (uncomment one)
#############################
# Release build flags
CFLAGS += -O3
#############################
# Debug build flags
#CFLAGS += -g
#############################

# select a buffersize
#BUFFERSIZE = 4096
#BUFFERSIZE = 65536
BUFFERSIZE = 16777216

SOURCES = b64dec.c  b64enc.c  cdecode.c  cencode.c  decoder.cc  encoder.cc base64.cc

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

base64 b64enc b64dec encoder decoder: libb64.a

strip:
	strip $(BINARIES) *.exe

clean:
	rm -f *.exe* *.o $(TARGETS) *.bak *~

distclean: clean
	rm -f depend

depend: $(SOURCES)
	makedepend -f- $(CFLAGS) $(SOURCES) 2> /dev/null 1> depend

-include depend


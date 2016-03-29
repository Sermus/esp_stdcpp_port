CXX = xtensa-lx106-elf-g++
AR = xtensa-lx106-elf-ar
CXXFLAGS = -I. -Os -mlongcalls -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti

libstdc++port.a: routines.o
	$(AR) cru $@ $^

routines.o : routines.cpp

clean:
	rm -f routines.o libstdc++port.a
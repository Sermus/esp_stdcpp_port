CXX = xtensa-lx106-elf-g++
AR = xtensa-lx106-elf-ar
CXXFLAGS = -I. -Os -mlongcalls -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti

libstdc++port.a: cpp_routines.o
	$(AR) cru $@ $^

cpp_routines.o : cpp_routines.cpp

clean:
	rm -f cpp_routines.o libstdc++port.a
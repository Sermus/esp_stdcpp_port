CC = xtensa-esp108-elf-gcc
AR = xtensa-esp108-elf-ar
CFLAGS = -I. -Os -mlongcalls -ffunction-sections -fdata-sections

libstdc++port.a: cpp_routines.o
	$(AR) cru $@ $^

cpp_routines.o : cpp_routines.c

clean:
	rm -f cpp_routines.o libstdc++port.a
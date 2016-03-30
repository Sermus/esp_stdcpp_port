# What's this?
This is a library which implements new/delete operators on top of Espressif non-OS SDK memory management routines. This enables C++ objects to be used in esp8266 development environment.

# How to build
You need a fully working esp8266 development environment like esp-open-sdk (https://github.com/pfalcon/esp-open-sdk) or Unofficial Development kit (http://programs74.ru/udkew-en.html) to build this.
Crosscompiler must be within your PATH environment. Alternatively you may adjust CXX and AR variables to put fully qualified paths to your toolchain.

# How to use
After linking the lib to your project you'll have new/delete operators you can use usual way. 
The lib defines function do_global_ctors which invokes global object constructors. It must be called before you use any of them. Preffered way is calling it from user_init().

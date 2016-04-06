#include <c_types.h>
#include <osapi.h>
#include <mem.h>
#include "espmissingincludes.h"

void abort(void) __attribute__ ((__noreturn__));
void __cxa_pure_virtual(void) __attribute__ ((__noreturn__));
void __cxa_deleted_virtual(void) __attribute__ ((__noreturn__));
void abort()
{
    while (true)
        ; // enter an infinite loop and get reset by the WDT
}

void __cxa_pure_virtual(void)
{
    abort();
}

void __cxa_deleted_virtual(void)
{
    abort();
}

extern void (*__init_array_start)(void);
extern void (*__init_array_end)(void);

void do_global_ctors(void)
{
    void (**p)(void);
    for (p = &__init_array_start; p != &__init_array_end; ++p)
    {
        (*p)();
    }
}


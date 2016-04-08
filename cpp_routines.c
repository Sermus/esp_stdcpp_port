#include "cpp_routines.h"

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


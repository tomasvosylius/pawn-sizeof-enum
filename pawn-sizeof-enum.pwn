#if defined PAWN_SIZEOF_ENUM
    #endinput
#endif

#define PAWN_SIZEOF_ENUM

#define enum_array<%0>[%1]  %0[%1],%0@END
#define sizeof_enum(%0) ((_:%0@END)-(_:%0))

/*
    Usage: 
    enum ENUMERATOR
    {
        enum_array<foo>[24]
    };
    
    new 
        foo_copy[sizeof_enum(enum_array)]; // creates an array with size of 24
    printf("sizeof(foo_copy): %d", sizeof(foo_copy)); // prints out 24
*/
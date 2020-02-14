# About
#### This little macro helps to retrieve size of an "array" inside enum.
###### Each `enum_array<variable_name>[size]` increases actual enum size by 1.

Since enums are not arrays, PAWN doesn't return the often desired result. This is because:
```C
enum X
{
    A,
    B[10],
    C
}
```
is equal to:
```C
enum X
{
    A,
    B,
    C = B + 10
}
```

# Usage
```Pawn
enum ENUMERATOR
{
    enum_array<foo>[24]
};

new 
    foo_copy[sizeof_enum(enum_array)]; // creates an array with size of 24
printf("sizeof(foo_copy): %d", sizeof(foo_copy)); // prints out 24

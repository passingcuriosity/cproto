cproto
======

A small dynamic language interpreter written by copy'n'pasting from [Crafting
Interpreters][1].

[1]: https://craftinginterpreters.com/

Future versions will grow to include some or all of the following:

1. More complete (dynamic) types for values and annotations for callable
   objects.

2. Checking of automatic and manual contracts (from type annotations and
   assertions).

3. More structural syntax for class definitions: declared parameters, declared
   _private_ fields, etc.

4. Some form of generics: classes are parameterised by types; a type is a class
   and a vector of types.

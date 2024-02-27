# MEx 2: Memory management of machine representation
[Previous](01-HPC/README.md) | [Main](../README.md) | Next

## **OBJECTIVE**: Demonstrate speedup via memory management via analysis of logistic map

- [ ] KR1: Demonstrated tradeoff between runtime speed and over- or underflow checks in number representations.
	- [ ] KR1a: Showed integer representation overflow in Julia. Consider using `typemax()` and `typemin()` functions.
	- [ ] KR1b: Forced overflow check and automatic type upgrade via `BigInt` types. Check the function `big()` in converting regular integers to `BigInt`.
	- [ ] KR1d: Determined the maximum values for the different integer types: `Int32`, `Int64`, `Int128`, among others including the default `Int`. Explored other possible `Int`-type variation, if any in the latest Julia version.
	- [ ] KR1c: Compared the runtimes of functions or operations with and without overflow checking using `BenchmarkTools`. Use the section on `BigInt` in Chapter 5 of the book reference.
- [ ] KR2: Analyzed the floating point layout or architecture used by your Julia installation.
	- [ ] KR2a: Implemented `floatbits()` in Chapter 5 of the main book reference showing correct placement of floating point representation .
	- [ ] KR2b: Duplicated the Properties column entries in _at least one row_ (e.g. `Float32` is `binary32`, etc) on own Julia installation the IEEE 754 standard layout [table of basic and interchange formats](https://en.wikipedia.org/wiki/IEEE_754#Basic_and_interchange_formats).
	- [ ] KR1e (optional): Did the same for underflow phenomenon in small numbers known as "subnormal numbers".
- [ ] KR3: Shown how much `@fastmath` macro speeds up computation with a trades off in some level of accuracy. The `sum_diff()` function in the main book reference may be replicated for this purpose.




# MEx 2: Memory management of machine representation
[Previous](01-HPC/README.md) | [Main](../README.md) | Next

# **OBJECTIVE**: Demonstrate speedup via memory management via analysis of logistic map
- [ ] KR1: Demonstrated tradeoff between runtime speed and overflow check in number representations.
	- [ ] KR1a: Showed integer representation overflow in Julia. Consider using `typemax()` and `typemin()` functions.
	- [ ] KR1b: Forced overflow check and automatic type upgrade via `BigInt` types. Check the function `big()` in converting regular integers to `BigInt`.
	- [ ] KR1c: Used `BenchmarkTools` to analyze slowing down with overflow checking.
	- [ ] KR1d: Determined the maximum values for the different integer types: `Int32`, `Int64`, `Int128`, among others including the default `Int`. Explored other possible `Int`-type variation, if any in the latest Julia version.
- [ ] KR2: Analyzed the floating point layout or architecture used by your Julia installation.
	- [ ] KR2a: Implemented `floatbits()` in Chapter 5 of the main book reference showing correct placement of floating point representation .
	- [ ] KR2b: Compared own machine’s representation with the [IEEE 754 standard layout](https://en.wikipedia.org/wiki/IEEE_754).
- [ ] KR3: Shown how much `@fastmath` macro speeds up computation with a trades off in some level of accuracy. The `sum_diff()` function in the main book reference may be replicated for this purpose.
- [ ] KR5:  
- [ ] KR6: 
- [ ] KR7. 
- [ ] KR8: 

Depending on the intention, accuracy may be required more than speed. In case of preference for accuracy, additional steps or algorithms need to be implemented or used to ensure the right level of precision in representations and round-off errors checked during computations. KBN summation can be accessed but results to high runtime cost.

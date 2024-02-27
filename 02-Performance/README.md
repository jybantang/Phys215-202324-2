# MEx 2: Memory management of machine representation
[Previous](01-HPC/README.md) | [Main](../README.md) | Next

## **OBJECTIVE**: Demonstrate speedup via memory management via analysis of logistic map

- [ ] KR1: Demonstrated tradeoff between runtime speed and over- or underflow checks in [number representations in Julia](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/).
	- [ ] KR1a: Showed integer representation overflow in Julia. Consider using `typemax()` and `typemin()` functions.
	- [ ] KR1b: Forced overflow check and automatic type upgrade via `BigInt` types. Check the function `big()` in converting regular integers to `BigInt`.
	- [ ] KR1c: Determined the maximum values for the different integer types: `Int32`, `Int64`, `Int128`, among others including the default `Int`. Explored other possible `Int`-type variation, if any in the latest Julia version.
	- [ ] KR1d: Compared the runtimes of functions or operations with and without overflow checking using `BenchmarkTools`. Use the section on `BigInt` in Chapter 5 of the book reference.
- [ ] KR2: Analyzed the floating point layout or architecture used by your Julia installation.
	- [ ] KR2a: Implemented `floatbits()` in Chapter 5 of the main book reference showing correct placement of floating point representation .
	- [ ] KR2b: Duplicated the Properties column entries in _at least one row_ (e.g. `Float32` is `binary32`, etc) on own Julia installation the IEEE 754 standard layout [table of basic and interchange formats](https://en.wikipedia.org/wiki/IEEE_754#Basic_and_interchange_formats).
	- [ ] KR2c (optional): Did the same for underflow phenomenon in small numbers known as "subnormal numbers".
- [ ] KR3: Shown how much `@fastmath` macro speeds up computation with a trades off in some level of accuracy. The `sum_diff()` function in the main book reference may be replicated for this purpose.
	- [ ] KR3a: Implemented (includes having tested) a function such as `sum_diff()` in the book as well as its `@fastmath` counterpart.
	- [ ] KR3b: Compared the runtimes of two implemented functions (one with `@fastmath`) using the appropriate `BenchmarkTools` available.

Depending on the intention, accuracy may be required more than speed. In case of preference for accuracy, additional steps or algorithms need to be implemented or used to ensure the right level of precision in representations and round-off errors checked during computations.

## Floating-point representation

Numbers are infinite. Every data representation is finite. Therefore data representation can hold infinite amount of information. The number of states of a given data gives the boundaries of the numbers that can be represented.

Machine representation is covered by [the IEEE Standard for Floating-Point Arithmetic (IEEE 754)](https://en.wikipedia.org/wiki/IEEE_754) and are illustrated well in this [GeeksForGeeks page (:warning: with paid ads)](https://www.geeksforgeeks.org/ieee-standard-754-floating-point-numbers/). The IEEE 754 [is available online for free](https://ieeexplore.ieee.org/document/8766229) unlike the more popular ISO standard which contains the same content verbatim.

## Base-dependent representation

Even if given the same finite number of states, data representation can be imperfect for some information. For example, the decimal value $0.1$ can be represented perfectly by a decimal data (one digit) but cannot be perfectly represented by binary data (requires infinite digits):
- $0.1_{10}$ := `0.1001 1001 1001 ...` (base 2)

In Julia, basic functions are provided to allow analysis of how the specific Numbers are represented. Julia provides [a range of primitive numeric representations](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/) as well as [support for arithmetic that requires arbitrary precision](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/#Arbitrary-Precision-Arithmetic).

## Unit in Last Place (ULP)

Floating point representation can provide a schema that allows movement of the decimal place and help identify digits of significance to the value (significant digits). This schema limits the smallest non-zero and the largest value. Other quantities also arise:
1. Machine epsilon `eps()`
2. Next or previous floating point number represented `nextfloat()` and `prevfloat()`

Subnormal numbers extends the representation lower than the representation machine epsilon. The machine epsilon per definition translates to
$$\epsilon = {\rm nextvalue}(x)-x$$
for any $x$ representation in the machine. Far from limits, this is the same as $x-{\rm previousvalue}(x)$.

The `floatbits()` function can be used to display the bit representation of the floating point number. The same function can be used for multiple dispatch for `Float32`, following [the IEEE Standard for Floating-Point Arithmetic (IEEE 754)](https://en.wikipedia.org/wiki/IEEE_754)

## Machine representation implications

The presence of over- and underflows implies the importance of normalization. In most practical situations, what must be satisfied is the dynamic range (total number of unique states that can be represented in a given scheme). 

For instance, the dynamic range of signed integer and unsigned integer is the same but for counting purposes, the unsigned integer can count twice as much (simply because the sign bit becomes part of the "counting").

The difference between `Float64` and `Float128` may be enough to cover what is required in either counting or tracking of any dynamical state.

The translation to meaning from representation (data) is where we are best needed. Normalization allows a good numerical tractability since the value $1$ is farthest from both the under-  (the smallest non-zero) and overflow (largest before `Inf`) values. In the end, knowledge (not necessarily understanding) of the finite representation of digital data can help us in determining as to which point our numerical approach still makes sense in relation to the solution we offer.

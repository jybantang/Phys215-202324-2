# Session 3: Types, type inference and stability
[Previous](../02-Performance/README.md) | [Main](../README.md) | [Next](../04-Fast-Calls/README.md)

# **OBJECTIVE**: Demonstrate the dynamic programming features of Julia
 - [ ] **KR1:** Shown or demonstrated the hierarchy of Julia's type hierarchy using the command `subtypes()`. 
    Start from `Number` and use `subtypes()` to explore from _abstract types_ down to _specific types_. 
    Use `supertype()` to determine the _parent_ abstract type.
 - [ ] **KR2:** Implemented and used at least one own composite type via `struct`.
   Generate two more versions that are mutable type and type-parametrized of the custom-built type.
 - [ ] **KR3:** Demonstrated type inference in Julia.
   [Generator expressions](https://docs.julialang.org/en/v1/manual/arrays/#Generator-Expressions) may be used for this.
 - [ ] **KR4:** Created a function with inherent type-*instability*.
   Create a version of the function with fixed *type-instability* issues.
 - [ ] **KR5:** Demonstration of how `@code_warntype` can be useful in detecting *type-instability*.
 - [ ] **KR6:** Demonstration of how `Array`s containing ambiguous/abstract types often results to slow execution of codes.
   The `BenchmarkTools` may be useful in this part.

# Resources
The basics of `BenchmarkTools` module package is found [here](https://juliaci.github.io/BenchmarkTools.jl/dev/manual/#Benchmarking-basics).

# Slides used
We used [this slide set during the demo discussion](Session-3-Types.slides.html).

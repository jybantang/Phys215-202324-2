# Session 0: Installation and exploration of the Julia language
[Main](../README.md) | [Next](../01-HPC/README.md)

## OBJECTIVE: Successfully Explore Julia

Provide a Google Docs documentation for the following Key Results (KR).
Use the provided template.
You may need a screenshot / printscreen function for this.
- [ ] **KR1:** The Julia REPL and its introduction runs using the terminal of your Operating System (OS)
- [ ] **KR2:** Use `versioninfo()` command to show the relevant information of the installation.
- [ ] **KR3:** Successful execution of [mathematical commands via the Julia terminal ("advanced" calculator function)](https://en.wikibooks.org/wiki/Introducing_Julia/The_REPL#Julia_and_mathematics) up to generating a histogram of a normally-distributed random numbers.
- [ ] **KR4:** Show switching of REPL to [the four REPL modes](https://en.wikibooks.org/wiki/Introducing_Julia/The_REPL)
- [ ] **KR5:** Display the type hierarchy in Julia (starting from `Number`) similar to one shown in [the Julia Documentation page](https://docs.julialang.org/en/v1/base/numbers/). Utize the [`showtypetree()` function in the wikibooks page](https://en.wikibooks.org/wiki/Introducing_Julia/Types).

# Julia tutorials
Based on experience, the best go-to sites are the main references indicated in [the Syllabus](../SYLLABUS.md) especially the official Julia documentation site.

# Installing Julia
Julia app can be directly downloaded from the Julialang.org [“Download Julia” page](https://julialang.org/downloads). 
This will provide CLI Julia.
I recommend downloading the latest stable (25 December 2023), **v 1.10.0** via terminal command in that page.
Installing the `juliaup` is the latest best way.
I have tried [installing Julia via `brew`](https://formulae.brew.sh/formula/julia) (I work with MacOS), but recently the version is delayed (v.1.9.4) and reverted to the CLI and `juliaup`.
You may still opt to use the `brew` and the delayed Julia version should not be a problem.

# Julia Tutorials
These links are found in the updated websites of Julialang.org and others. There should be no need to enroll in other resource. However, if you have the opportunity to access them, that’s no worry.

Remember that in the end, we just wish to become Physicist who can use the computer to help us in our discovery.
- [Julia Documentation](https://docs.julialang.org/en/v1/)
- [Start using Julia](https://docs.julialang.org/en/v1/manual/getting-started/)
- [Plots Basics](https://docs.juliaplots.org/latest/basics/)
- [Plots Tutorial](https://docs.juliaplots.org/latest/tutorial/)
- [Pkg Basics](https://pkgdocs.julialang.org/v1/getting-started/#Basic-Usage)

# Installing Jupyter notebook
**Jupyter Notebooks** are fun to use.
Notebooks can contain discussions like a diary.

Since we will eventually use this as a way to submit your homeworks, here are the links from where you will be able to download the Jupyter installations.
- Main [Jupyter page](https://jupyter.org).
- Jupyter Notebook documentation is found [online](https://jupyter-notebook.readthedocs.io/en/stable/).
- Jupyter Notebook installation will require Python installation via [Anaconda](https://www.anaconda.com/products/distribution).
- Installing IJulia and Julia kernel into Jupyter is found in the [IJulia documentation](https://julialang.github.io/IJulia.jl/stable/).

## Pluto for those with limited coding experience
Here, I initially utilized the [`Pluto` package of Julia](https://plutojl.org/en/docs/).
Some authors recommend to use Pluto for initial explorations for those with no direct experience in coding.
<!--
You may check out `j1-basic-julia.jl` for the exploration.
 Some tricks may be found in the `j1-plot-mandel.jl`.
-->
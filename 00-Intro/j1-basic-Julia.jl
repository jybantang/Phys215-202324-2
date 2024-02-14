### A Pluto.jl notebook ###
# v0.19.38

using Markdown
using InteractiveUtils

# ╔═╡ 8b873022-eb1a-4980-a864-fb34ecc34903
#All preambles of this notebook goes here.
begin
	using Pkg
	Pkg.add("Plots")  ##Removed because of the Pluto comment
	Pkg.add("Images") ##Removed because of the Pluto comment
	Pkg.add("CSV") ##Removed because of the Pluto comment
	Pkg.add("DataFrames") ##Removed because of the Pluto comment
	using Plots
	using Images
	using CSV
	using DataFrames
end

# ╔═╡ c5449f77-8865-43f3-8d21-6698a7b7c703
md"""
# Physics 215 WFZ (AY 202324 sem 2)
Johnrob Y. Bantang [jybantang@up.edu.ph](email:jybantang@up.edu.ph)
"""

# ╔═╡ 94e57644-12cf-11ec-0d76-3bac8634053f
md"""
# Basic Julia with data and plot

This notebook demonstrates the basic `Julia` programming snippets including data reading, writing and plotting using the `Plots`. Meanwhile here are a few resources for learning `Julia`.
- [Fastrack to Julia cheatsheet](https://juliadocs.github.io/Julia-Cheat-Sheet/)
- [MATLAB-Julia-Python comparative cheatsheet by QuantEcon group](https://cheatsheets.quantecon.org/)
- [Plots.jl cheatsheet](https://github.com/sswatson/cheatsheets/blob/master/plotsjl-cheatsheet.pdf)

The ''preamble'' of a basic Julia code (or _script_) is loading the necessary packages or Modules via the `using <PackageName>` command.
For this activity, we will use `Plots`.
"""

# ╔═╡ b555ee6e-8ceb-40e1-b591-bae77189e6aa
md"""
## Installing `Julia` and `Pluto`

### Step 1: Test installed Julia
Julia can be downloaded from [`https://julialang.org/downloads`](https://julialang.org/downloads).
Choose the current release `Julia 1.6` for the semester.
There are versions for almost all popular operating systems available (Windows, macOS, and many `*nix`-like flavors).

Test the installed Julia app by launching it (usually via a command prompt or the `CLI` (Command-line interface).
The typical Julia prompt looks likes something below.
$(load("./img/Julia-REPL.jpg"))

In this class, we may use the `CLI` mode later in the semester.
For most cases, we will use the Julia `REPL` (`R`ead, `E`valuate, `P`rint and `L`oop).

Once you got the Julia REPL environment, you can test it by issuing valid commands such as follows.
```
julia> 1 + 1
```
$(load("./img/Julia-REPL-test0.png"))

#### _Versus_ popular programming languages

[This page](https://docs.julialang.org/en/v1/manual/noteworthy-differences/#Noteworthy-Differences-from-other-Languages) provides the summary of Julia features in comparison to other more popular programming languages (`MATLAB`, `R`, `Python`, `c/c++`, common `Lisp`).
For those familiar with `Python`, [this section](https://docs.julialang.org/en/v1/manual/noteworthy-differences/#Noteworthy-differences-from-Python) has some points below.
- In Julia, indexing of arrays, strings, etc. is `1`-based not `0`-based.
- `x[1:]` in Python is equivalent to `x[2:end]` in Julia.
- `A * B` in Julia is equivalent with `A @ B` in Python, whereas `A * B` in Python is equivalent with `A .* B` in Julia.
"""

# ╔═╡ cb87f10d-b7df-4492-a74e-61bdc2e0a2f6
md"""
### Step 2: Load Julia files in installed Pluto

`Pluto` is a Julia programming environment designed for interactivity and quick experiments.
It's an alternative to `Jupyter`.
Download and installation of `Pluto.jl` is available at [the Pluto.jl GitHub page](https://juliahub.com/docs/Pluto/OJqMt/0.7.4/).
Pluto is a highly interactive IDE with codes that are interpreted live.

Interdependent cells are evaluated in their appropriate sequence without much worry on whether some variables are defined or not (or updated).
All edits to a function or variable (including plots) are updated.

If you have opened this file in Pluto, it is likely that you are already ready to go.
The basic commands are found in the following webpage.
- [Basic Commands in Pluto](https://github.com/fonsp/Pluto.jl/wiki/🔎-Basic-Commands-in-Pluto)
"""

# ╔═╡ e5ee6f94-548a-42b6-b853-966c554bef6b
md"""
# Plotting in Julia

The module `Plots` is a common interface in Julia that uses a common plot commands that it passes to the plotting backend.
The module/package is loaded via one of the lines in our Priamble above.
```
using Plots
```
The full documentation of this package is found below.
- [JuliaPlots.org](juliaplots.org)
Plots can be rendered in both the `julia>` REPL environment and in `Pluto` environment like here.
Sample plots can be done using random numbers generated via `rand()` like this one below.
"""

# ╔═╡ 5e1cbbcc-4d69-409e-a7ea-2b3e6485b203
begin
	xdat = rand(100); sort!(xdat)
	ydat = rand(100);
	
	plot( xdat, ydat
		,xaxis=("x-values", (-0.1,1.1))
		,yaxis=("y-values", (-0.1,1.1))
		,marker=(0.7,:circle,:blue) #α-value is 0.7
		,line=(0.7,:dash,:blue)
		,label="random values"
		,legend=:bottomright
	)
	title!("Sample Plot")
end

# ╔═╡ d581053b-37a5-4b19-9ccd-14f7b7dcad1b
md"""
You can try change the values and styles of the plots above.
Experiment with the different keys and values using the magic arguments.
- [Plot Attributes](http://docs.juliaplots.org/latest/attributes/#magic-arguments)
A more elaborate tutorial session can be done by following the [Plots Tutorial Page](http://docs.juliaplots.org/latest/tutorial/).
"""

# ╔═╡ 4d6035c6-a238-48e8-96a6-70d6485f4fa8
md"""
## Plotting functions

Plotting functions is easy in Julia.
"""

# ╔═╡ 59eab17f-e730-4e07-924c-b755c6e5b6a3
begin
	f(x) = 4x^2 #note that we could also have written f(x) = 4.0*x^2
	g(x) = 4(x-2)^2
	plt = plot( (x)->f(x)
		,label="qf 1"
		,line=(4,:dash,:maroon)
	)
	plot!(plt, (x)->g(x)
		,label="qf 2"
		,line=(2,:solid,:green)
	)
	xaxis!(plt,"x",(-5.0,5.0))
	yaxis!(plt,"y")
	title!(plt,"Plots of Quadratic Equations")
end

# ╔═╡ ed196cf3-6b81-4af1-a5b1-e06259942e63
md"""
3D plots can also be done as follows.
"""

# ╔═╡ 39c536ce-b11b-40b0-b2d4-10bbb03a9711
"""
x => [x,y]
"""
function rosenbrock(x::Vector)
  return (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
end

# ╔═╡ faa6b9b3-c92a-4ebf-864d-3201bd256d21
"""
x => [x,y]
"""
dipole( x::Vector ) = ( 1.0 + 1.0/( x[1]^2 + x[2]^2 )^(1.5) )*x[1]

# ╔═╡ 4c358714-b26d-44f7-941c-916c3de09a88
waves( x::Vector ) = sin( π*x[1] ) * cos( π*x[2] )

# ╔═╡ 83e022fd-0cf0-425a-8010-4d472fbd7b03
begin
	default(size=(600,600), fc=:ice) #fc=:heat)
	x, y = -3.0:0.1:3.0, -3.0:0.1:3.0
	z = Surface((x,y)->waves([x,y]), x, y)
	surface(x,y,z
		,linealpha = 0.3
		,zlim=(-2.0,2.0)
	)
end

# ╔═╡ 5d627c76-e431-4c51-a0f8-ad88f7edea03
md"""
## Reading data from files (`CSV.jl`)

The most common file format is the `CSV` (`C`omma-`S`eparated `V`alues, as `*.csv` file) and its common variant which is the tab-delimited value (usually as `*.dat`).
A sample data from the OurWorldInData.org we find [the COVID-19 dataset](https://ourworldindata.org/explorers/coronavirus-data-explorer) for the many countries in the world.
A downloaded version is placed in the local directory as `./dat/coronavirus-data-explorer.csv`.

Details of the CSV package is found in its [online CSV Documentation](https://csv.juliadata.org).

## Using `DataFrames.jl`

A geek way of analyzing data is using the codified table.
The most popular nowadays is `DataFrames` --the equivalent of `Pandas` in `Python`.
A data frame looks like a table with column names and row IDs.

### Reading CSV datafile

We will just load a `csv` data and plot a portion of it using `plot()` and other related commands.
Other data _types_ can be read using other modules/packages available in Julia.
"""

# ╔═╡ 618ba9c5-3d80-4f46-8c10-c84180173f13
begin
	df = CSV.read("./dat/coronavirus-data-explorer.csv", DataFrame)
end

# ╔═╡ 30779774-e277-4367-94a1-f17f068461c6
md"""
### Data fields obtained

The data frame `df` contains the following data fields (columns):
"""

# ╔═╡ 837eb854-648a-411a-b4f7-41e0a9f1ac6c
names(df)

# ╔═╡ 43211365-7d0e-45e9-ba1c-6e11e3184fbd
md"""
The command `names(df::DataFrames)::Vector{String}` provides access to the column names of the data frame `df`.

### Selecting data frame subsets

We select the rows with `iso_code` equal to ``PHL'' using the DataFrame function `filter()`.
You may also try filtering via `location` column.

Selecting only a specific portion of a given dataset can prove to make the subsequent processing faster.
"""

# ╔═╡ 6a66d2fb-7948-430a-9ed3-70dac2139ad9
ph = filter( :iso_code => ==("PHL"), df )

# ╔═╡ 8a750e73-0881-4e9d-a553-527f718cbc87
md"""
### Plotting data frame columns

Plotting the `ph` data frame columns can be easily done as follows.
"""

# ╔═╡ 0135b0a0-d753-4c71-a280-fe242872e165
begin
	phData = ph[:,[:total_cases]][:,1]
	scatter( phData
		,xaxis=("Day Number")
		,yaxis=("Number of Cases")
		,label=:none
		,marker=(2,0.5,:circle,:black)
	)
end

# ╔═╡ a349d4aa-6232-409a-a0e5-eed9b06de629
md"""
### `DataFrame` Cheatsheet
"""

# ╔═╡ 1d1e48a4-9605-4ff4-a9c9-7bebf1f5ccae
md"""
Cheatsheet for DataFrames can be [downloaded here](https://www.ahsmart.com/assets/pages/data-wrangling-with-data-frames-jl-cheat-sheet/DataFramesCheatSheet_v1.x_rev1.pdf).
"""

# ╔═╡ c5bee940-0289-4021-8f08-6ca488921816
md"""
# End
"""

# ╔═╡ Cell order:
# ╟─c5449f77-8865-43f3-8d21-6698a7b7c703
# ╟─94e57644-12cf-11ec-0d76-3bac8634053f
# ╠═8b873022-eb1a-4980-a864-fb34ecc34903
# ╟─b555ee6e-8ceb-40e1-b591-bae77189e6aa
# ╟─cb87f10d-b7df-4492-a74e-61bdc2e0a2f6
# ╟─e5ee6f94-548a-42b6-b853-966c554bef6b
# ╠═5e1cbbcc-4d69-409e-a7ea-2b3e6485b203
# ╟─d581053b-37a5-4b19-9ccd-14f7b7dcad1b
# ╟─4d6035c6-a238-48e8-96a6-70d6485f4fa8
# ╠═59eab17f-e730-4e07-924c-b755c6e5b6a3
# ╟─ed196cf3-6b81-4af1-a5b1-e06259942e63
# ╠═39c536ce-b11b-40b0-b2d4-10bbb03a9711
# ╠═faa6b9b3-c92a-4ebf-864d-3201bd256d21
# ╠═4c358714-b26d-44f7-941c-916c3de09a88
# ╠═83e022fd-0cf0-425a-8010-4d472fbd7b03
# ╟─5d627c76-e431-4c51-a0f8-ad88f7edea03
# ╠═618ba9c5-3d80-4f46-8c10-c84180173f13
# ╟─30779774-e277-4367-94a1-f17f068461c6
# ╠═837eb854-648a-411a-b4f7-41e0a9f1ac6c
# ╟─43211365-7d0e-45e9-ba1c-6e11e3184fbd
# ╠═6a66d2fb-7948-430a-9ed3-70dac2139ad9
# ╟─8a750e73-0881-4e9d-a553-527f718cbc87
# ╠═0135b0a0-d753-4c71-a280-fe242872e165
# ╟─a349d4aa-6232-409a-a0e5-eed9b06de629
# ╟─1d1e48a4-9605-4ff4-a9c9-7bebf1f5ccae
# ╟─c5bee940-0289-4021-8f08-6ca488921816

### A Pluto.jl notebook ###
# v0.19.38

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 601562e2-969e-401b-86cc-0e7dc8749a9e
begin
	import Pkg;
	Pkg.activate(".")
	Pkg.add("Plots");
	Pkg.add("PlutoUI");
	Pkg.update();
	using Plots
	using PlutoUI
end

# ╔═╡ add7be1b-369d-4ed2-ac45-d1934c538460
begin
	include("mandel.jl")
	include("plotMandel.jl")
end

# ╔═╡ 1fd57e9a-17c4-11ec-200f-1f7c16e35072
md"""
# Mandelbrot plot exploration

We will use the following functions:
- `plotMandel()` : plotting fn from `./plotMandel.jl`
- `mandel()` : called by `plotMandel()` to generate the Mandelbrot curve
by loading these definitions via `include` line.
"""

# ╔═╡ 0f30d2d0-752c-4942-b9a1-47ab047edaf9
@bind vrange RangeSlider(-1.0:0.001:1.0,show_value=true)

# ╔═╡ dc55f836-828e-4b68-841a-a2d114cf0011
begin
	vmin=minimum(vrange)
	vmax=maximum(vrange)
	plotMandel( (vmin,vmax); n=200 )
end

# ╔═╡ Cell order:
# ╠═601562e2-969e-401b-86cc-0e7dc8749a9e
# ╟─1fd57e9a-17c4-11ec-200f-1f7c16e35072
# ╠═add7be1b-369d-4ed2-ac45-d1934c538460
# ╠═0f30d2d0-752c-4942-b9a1-47ab047edaf9
# ╠═dc55f836-828e-4b68-841a-a2d114cf0011

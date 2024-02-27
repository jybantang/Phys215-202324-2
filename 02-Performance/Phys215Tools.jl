
function floatbits(x::Float64)
	b = bitstring(x)
	return b[1:1]*" | "*b[2:12]*" | "*b[13:end]
end

function floatbits(x::Float32)
	b = bitstring(x)
	return b[1:1]*" | "*b[2:9]*" | "*b[10:end]
end

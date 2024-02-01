
function mandel( c )
    z = c
    itrMax = 80
    for n in 1:itrMax
        if abs(z) > 2
            return n-1
        end
        z = z^2 + c
    end
    return itrMax
end


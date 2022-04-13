def range(min, max)
    return [] if max < min
    return [] if min == max
    [min] + range(min+1, max)
end
# p range(0, 1)

def range_iterative(min, max)
    sum = []
    (min...max).each {|num| sum<< num}
    sum
end
# p range_iterative(0, 3)

def exponent_1(base, exp)

    return 1 if exp == 0
    base * exponent_1(base, exp - 1)

end

# p exponent_1(3, 5)

def exponent_2(base, exp)

    return 1 if exp == 0
    return base if exp == 1

    if exp % 2 == 0
        exponent_2(base, exp / 2) ** 2
    else
        base * (exponent_2(base, (exp - 1) / 2) ** 2) 
    end
end

# p exponent_2(2, 4)


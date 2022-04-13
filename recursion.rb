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
p range_iterative(0, 3)
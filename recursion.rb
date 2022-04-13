require "byebug"

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

def dup(array)

    return array.dup if !array.is_a?(Array)
    output_array = []
    array.each do |ele|
        output_array << dup(ele)
    end
    output_array
end

# p dup([1, 2,[3]])

def fibonacci(n)

    return [0] if n == 0
    return [0, 1] if n == 1
    last_fibonacci = fibonacci(n-1)
    last_fibonacci += [ last_fibonacci[-1] + last_fibonacci[-2] ]

end

# p fibonacci(7)

def bsearch(array, target)
    debugger

    middle_element_idx = array.length / 2
    middle_element = array[middle_element_idx]
    return middle_element_idx if target == middle_element
    bsearch(array[0...middle_element_idx], target) if target < middle_element
    bsearch(array[middle_element_idx + 1..-1], target) if target > middle_element

end

p bsearch([1,2,3], 1)
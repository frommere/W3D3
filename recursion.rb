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

# def dup(array)

#     return array.dup if !array.is_a?(Array)
#     output_array = []
#     array.each do |ele|
#         output_array << dup(ele)
#     end
#     output_array
# end

# p dup([1, 2,[3]])

def fibonacci(n)

    return [0] if n == 0
    return [0, 1] if n == 1
    last_fibonacci = fibonacci(n-1)
    last_fibonacci += [ last_fibonacci[-1] + last_fibonacci[-2] ]

end

# p fibonacci(7)

def bsearch(array, target)
    middle_element_idx = array.length / 2
    middle_element = array[middle_element_idx]
    if array.length == 0
        return nil
    end
    if target == middle_element
        return middle_element_idx
    elsif target < middle_element
        return bsearch(array[0...middle_element_idx], target) 
    elsif target > middle_element
        return 1 + middle_element_idx + bsearch(array[middle_element_idx + 1..-1], target) if bsearch(array[middle_element_idx + 1..-1], target)!=nil
        return nil
    end

end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(array)
    return array if array.length == 0 || array.length == 1
    middle_element_idx = (array.length-1) / 2
    left = array[0..middle_element_idx]
    right = array[middle_element_idx+1..-1]
    merge(merge_sort(left), merge_sort(right))
    
end

def merge(array_left, array_right)

    results = []
    array_left_index = 0
    array_right_index = 0

    while array_left_index <= array_left.length - 1 && array_right_index <= array_right.length - 1
        if array_left[array_left_index] < array_right[array_right_index]
            results << array_left[array_left_index]
            array_left_index += 1
        else
            results << array_right[array_right_index]
            array_right_index += 1
        end
    end
    results += array_left[array_left_index..-1] + array_right[array_right_index..-1]
end


# p merge_sort([38, 27, 43, 3, 9, 82, 10])

def subsets(array)
    debugger
    return [array] if array.length == 0
    subset = array[0..-2]
    first_output = subsets(subset)
    second_output = first_output.map{|ele| ele + [array[-1]]}
    first_output + second_output
end
p subsets([1, 2, 3])



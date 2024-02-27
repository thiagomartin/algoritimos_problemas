def find_largest_three_elements(arr)
  first = second = third = - Float::INFINITY

  arr.each do |x|
    if x > first
      third = second
      second = first
      first = x
      elsif x > second && x != first
        third = second
        second = x
        elsif x > third && x != second
          third = x
    end

  end

  [first, second, third]
end

array = [10, 4, 3, 50, 23, 90]
result = find_largest_three_elements(array)

puts "Array original: #{array}"
puts "Três maiores elementos: #{result}"

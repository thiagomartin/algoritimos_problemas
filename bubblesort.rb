def bubble_sort(arr)
  n =  arr.length
  for i in 0..n-1
    for j in 0..n-i-2
      if arr[j] > arr[j+1]
      arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
end

my_list = [64, 34, 25, 12, 22, 11, 90]
print "#{my_list}\n"
bubble_sort(my_list)
puts "lista ordenada: #{my_list}"

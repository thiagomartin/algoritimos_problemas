def search(list, value_search)
  for i in 0..(list.length - 1)
    if list[i] ==  value_search
      return i
    end
  end

  return -1
end

my_list = [3, 1, 4, 5, 9, 2, 6, 5, 3, 5]
value_searching = 6

result = search(my_list, value_searching)

if result != -1
  puts " O valor #{value_searching} foi  na posição #{result}."
else
  puts "O valor #{value_searching} não foi encontrado na lista."
end

###########


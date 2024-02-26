def count_sort(input_array)
  max_value = input_array.max
  min_value = input_array.min
  range = max_value - min_value +1

  #passo 1: contagem das ocorrencias de cada elemento
  count = Array.new(range, 0)
  input_array.each{ |element| count[element - min_value]+= 1 }

  #passo 2: Ajuste das contagens para representar as posiçoes corretas
  (1...range).each {|i| count[i] += count[i -1]}

  #passo 3: Construção do array ordenado

  sorted_array = Array.new(input_array.length)
  input_array.reverse.each do | element |
    count_index = element - min_value
    sorted_array[count[count_index] - 1] =  element
    count[count_index ] -= 1
  end
  sorted_array
end


#ex de uso
original_array = [4,2,2,8,3,3,1]
sorted_array = count_sort(original_array)

puts "Array original: #{original_array}"
puts "Array Ordenado: #{sorted_array}"

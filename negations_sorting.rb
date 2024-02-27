def maximize_sum_after_k_negations(arr, k)
  # Ordena o array em ordem crescente
  arr.sort!

  # Negar os primeiros K elementos
  i = 0
  while k > 0 && i < arr.length && arr[i] < 0
    arr[i] = -arr[i]
    k -= 1
    i += 1
  end

  # Se ainda restarem negações ímpares, inverter o menor elemento
  if k % 2 == 1
    arr.sort!
    arr[0] = -arr[0]
  end

  # Retorna a soma máxima após as negações
  arr.sum
end

# Exemplo de uso
array = [9, -1, -5, 2, -4]
k = 4
result = maximize_sum_after_k_negations(array, k)

puts "Array: #{array}"
puts "Soma máxima após #{k} negações: #{result}"

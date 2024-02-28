def binary_search(list, target)
  esquerda, direita = 0, list.length - 1

  while esquerda <= direita
    meio = (esquerda + direita) / 2
    valor_meio = list[meio.to_i]

    if valor_meio == target
      return meio
    elsif valor_meio < target
      esquerda = meio + 1
    else
      direita = meio - 1
  end
end

return -1

end

list_ordenada =[1,2,3,4,5,6,7,8,9,10]
target = 6

result = binary_search(list_ordenada, target)

if result != -1
puts "Elemento #{target} encontrado na posição #{result}."
else
puts "Elemento #{target} não encontrado na lista"
end

#def binary_search(list, target)
#  esquerda = 0
#  direita = list.length - 1
#
#  while esquerda <= direita
#    meio = (esquerda + direita) / 2 #index meio
#    valor_meio = list[meio]
#
#    if valor_meio == target
#      return meio
#    elsif valor_meio < target
#      esquerda = meio + 1
#    else
#      direita = meio - 1
#    end
#  end
#
#  return false
#
#end
#
#list_ordenada =[1,2,3,4,5,6,7,8,9,10]
#target = 6
#
#result = binary_search(list_ordenada, target)
#
#if result != false
#puts "Elemento #{target} encontrado na posição #{result}."
#else
#puts "Elemento #{target} não encontrado na lista"
#end

def binary_search(list,target)
  baixo = 0
  alto = list.length - 1

  while baixo  <= alto
    meio = (alto + baixo) /2
    valor_meio = list[meio]

    if  valor_meio == target
      return meio
    elsif valor_meio > target
      baixo = meio +1
    else
      alto = meio - 1
    end
  end
  return false
end

list_ordenada =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
target = -1
result = binary_search(list_ordenada, target)
if result  != false
  puts "#{target} está no índice #{result}"
else
  puts "#{target} não foi encontrado na lista"
end




def calcular_fatorial(numero)
  return puts "só positivo" if  numero < 0

  if numero == 0
    1
  else
    numero * calcular_fatorial(numero - 1)
  end
end

puts "digite um número: "
numero = gets.chomp.to_i
fatorial = calcular_fatorial(numero)
puts "#{fatorial}"

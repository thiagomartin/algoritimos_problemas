print "Digite um número para calcular o fatorial: "
numero = gets.chomp.to_i
fatorial = (1..numero).reduce(:*)|| 1
puts "o fatorial de #{numero}! é: #{fatorial}"

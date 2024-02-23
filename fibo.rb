#Sequencia Fibonacci


print "digite a quantidade de números na sequência de Fibonacci: "
n = gets.chomp.to_i

fibonacci = [0, 1]

while fibonacci.length < n
fibonacci << fibonacci[-1] + fibonacci[-2]
end

puts "Sequência de Fibonacci: #{(fibonacci).join(', ')}"

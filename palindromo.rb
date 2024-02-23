# palindromo

print "Digite uma palavra: "
palavra = gets.chomp.downcase

# Verificando se a palavra é um palíndromo

if palavra == palavra.reverse
  puts "#{palavra} é um palíndromo."
  else
    puts "#{palavra} não é um palíndromo."
end

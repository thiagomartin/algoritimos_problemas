print "Digite o primeiro número: "
num1 = gets.chomp.to_f

print "Digite o segundo  número: "
num2 = gets.chomp.to_f

puts "Escolha uma oprecação: +, -, *, /"
oprecação =  gets.chomp

result = case oprecação
  when '+'
    num1 + num2
  when '-'
    num1 - num2
    when '*'
      num1 * num2
  when '/'
    num1 / num2
  else
    "operação invalida"

end

puts "resultado: #{result}"

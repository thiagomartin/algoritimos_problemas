print "Digite um número para calcular o fatorial: "
numero = gets.chomp.to_i
fatorial = (1..numero).reduce(:*)|| 1
puts "o fatorial de #{numero}! é: #{fatorial}"

#####forma diferente poderia usar o require(de forma externa) só pra treinar 
class Fatorial
  def initialize(n)
    @num = n
  end
def calcular_fatorial
  if @num == 0
    1
  else
    @num * Fatorial.new(@num -1).calcular_fatorial
  end
  end
end

n = Fatorial.new(5)
puts "#{n.calcular_fatorial}"

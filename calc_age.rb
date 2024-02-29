# preciso imputar uma data de nascimento completa e saber com a data atual quantos anos tem ex anos, mes e dia
require 'date'

def calculate_age(date_of_birth)
  today = Date.today()
  years = today.year - date_of_birth.year
  months = today.month  - date_of_birth.month
  days = today.day - date_of_birth.day

  if days < 0
    month =1
    days += Date.new(today.year, today.month, 1) + (1.month - date_of_birth.day)
  end
 if months < 0
   years -= 1
   months += 12
 end
return years,months,days
end


date_of_birth = Date.new(1986, 9,22)
years, months,days = calculate_age(date_of_birth)

puts "Idade: #{years} anos, #{months} meses e #{days} dias."

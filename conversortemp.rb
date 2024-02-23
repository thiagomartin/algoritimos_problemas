# Conversor de temperatura

print "Escolha a unidade de temperatura (C para Celsius, F para Fahrenheit): "
unidade = gets.chomp.upcase

print "Digite a temperatura: "
temperatura = gets.chomp.to_f

resultado_temp = case unidade
when 'C'
  (temperatura * 9/5) + 32
when 'F'
  (temperatura - 32) * 5/9
else
  nil
end

unidade_result = case unidade
when 'C'
  'Fahrenheit'
when 'F'
  'Celsius'
else
  nil
end

if resultado_temp.nil?
  puts "Temperatura inválida"
else
  puts "Resultado: #{resultado_temp.round(2)} #{unidade_result}"
end

def count_characteres(str)
  uppercase_count = 0 #
  lowercase_count = 0
  special_character_count = 0
  numeric_count = 0

  str.each_char do |char|
    if char.match (/[A-Z]/)
      uppercase_count +=1
    elsif char.match(/[a-z]/)
      lowercase_count +=1
    elsif char.match(/[!@#$%^&*()_{}\[\]:;<>,.?~\\\-]/)
      special_character_count+=1
    elsif char.match(/[0-9]/)
      numeric_count +=1
    end
  end
  #isso é um hash quebrado em linhas.

  [uppercase_count, lowercase_count,special_character_count,numeric_count]
end

imput_string = "GeeKs01fOr@gEEks07"

result = count_characteres(imput_string)

puts "String de entrada: #{imput_string}"
puts "Contagem de caracteres:"
puts "- Letras maiúsculas: #{result[0]}"
puts "- Letras minúsculas: #{result[1]}"
puts "- Caracteres especiais: #{result[2]}"
puts "- Numeros: #{result[3]}"




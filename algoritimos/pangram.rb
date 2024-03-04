# promeiro criar uma DEF
def missing_characters_for_pangram(str)
  alphabet = ('a'..'z').to_a
  present_letters = str.downcase.scan(/[a-z]/).uniq
  missing_letters = alphabet - present_letters

  missing_letters.join
end

#ex de uso

imput_string =  "The quick brown fox jumps"
result = missing_characters_for_pangram(imput_string)

puts "String: #{imput_string}"
puts "Caracteres ausente para formar um pangram: #{result}"

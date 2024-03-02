class Person
  attr_reader :age, :name
  attr_writer :name
  attr_accessor :bio

  def initialize(age)
    @age = age
  end
end

person = Person.new(37)
person.name = "Thiago Martin"

puts "#{person.name}"
puts "Age: #{person.age}"
person.bio = "I am a student software developer."
puts person.bio

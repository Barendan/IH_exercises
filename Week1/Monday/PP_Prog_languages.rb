class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
    
  end
end


 aged_languages = array_of_languages.map do |language|
   language = ProgrammingLanguage.new(language.name, language.age + 1, language.type)
end 

# puts "The programming languages aged one year are: "
# array_printer(aged_languages)

# puts aged_languages --> returns the array object code

sorted_languages = aged_languages.sort_by do |sort|
   sort.age
end 
.reverse
# puts "The programming languages sorted by age are:"
# array_printer(sorted_languages)

# puts sorted_languages --> returns the array object code

javaless = array_of_languages.delete_at(6)
array_printer(array_of_languages)

# array_of_languages.shuffle!
# array_printer(array_of_languages)

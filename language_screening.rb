require 

def langauge_screening(people, language)
    people.select do |people|
        people[:languages].map do |language|
            language.downcase 
        end
    .include? language.downcase
    end
end

puts "Can Python?"
puts language_screening(candidates, "Python")
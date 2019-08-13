jane = {
    first_name: "Jane",
    last_name: "Doe",
    level: "senior_level",
    age: 30 ,
    occupation: "Software Developer",
    employed: "true",
    current_salary: 125000 ,
    languages: ["Ruby", "JavaScript", "Go"]
}

sara = {
    first_name: "Sara",
    last_name: "Smith",
    level: "mid_level",
    age: 26 ,
    occupation: "Software Developer",
    employed: "true",
    current_salary: 80000 ,
    languages: ["Ruby", "Python" ]
}

jason = {
    first_name: "Jason",
    last_name: "Gray",
    level: "entry_level",
    age: 23 ,
    occupation: "Student",
    employed: "false",
    current_salary: 0 ,
    languages: ["C++", "Python"]
}

candidates = []
candidates << jane << sara << jason

# puts candidates

def average_age(people)
    can_age  = []
    people.map do |people|
        can_age.push(people[:age])
    end
    can_age.reduce(0) do |adder , age|
        adder += age / people.length.to_f
        adder
    end
end

puts "Average Age of Candidates"
puts average_age(candidates)
puts " " 

def langauge_screening(people, language)
    people.select do |people|
        people[:languages].map do |language|
            language.downcase 
        end
    .include? language.downcase
    end
end

puts langauge_screening(candidates, "C++")



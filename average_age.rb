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
    
    puts average_age(candidates)
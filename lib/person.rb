require 'pry'

class Person

    def initialize(name)
        @name = name 
        @bank_account = 25.00
        @happiness_points = 8
        @hygiene_points = 8
        binding.pry
    end 

    def bank_account
        @bank_account 
    end 

    def bank_account=(money)
        @bank_account = money 
    end 

    def happiness_points=(points)
        @happiness_points = points 
        if @happiness_points > 10
            @happiness_points = 10
        elsif @happiness_points < 0
            @happiness_points = 0
        end 
    end 

    def hygiene_points=(points)
        @hygiene_points = points
        if @hygiene_points > 10
            @hygiene_points = 10
        elsif @hygiene_points < 0
            @hygiene_points = 0
        end 
    end 
    
    attr_reader :happiness_points 
    attr_reader :hygiene_points
    attr_reader :name   
    
    def happy?
        if self.happiness_points > 7
            return true
        end
        false
    end

    def clean?
        if self.hygiene_points > 7
            return true
        end
        false
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene_points += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene_points -= 3
        self.happiness_points += 2
        return "♪ another one bites the dust ♫"
    end

end

bryce = Person.new("Bryce")
akram = Person.new("Akram")
anne = Person.new("Anne")

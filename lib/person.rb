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
end

bryce = Person.new("Bryce")
akram = Person.new("Akram")

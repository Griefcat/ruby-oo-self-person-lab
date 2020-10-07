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

    attr_accessor :happiness_points 
    attr_accessor :hygiene_points
    attr_reader :name
    attr_writer





















end 

bryce = Person.new("Bryce")
akram = Person.new("Akram")

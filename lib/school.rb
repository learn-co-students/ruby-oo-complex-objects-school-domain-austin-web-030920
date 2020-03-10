require 'pry'

class School
    attr_accessor :name, :roster, :student

    def initialize(name)
        @name = name
        @roster = {}
    end 
    
    def add_student(name, num)
        if !@roster[num]
            @roster[num] = []
        end
        @roster[num] << name
    end

    def grade(grade)
        @roster.select {|key, value| return value if key == grade }
    end
    
    def sort
        @roster.each { |key, value| @roster[key] = value.sort}
    end
end



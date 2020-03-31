require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 
    
    def add_student(name, num)
        @roster[num] ||= []
        @roster[num] << name
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each { |key, value| @roster[key] = value.sort}
    end
end



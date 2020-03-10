# code here!
require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        return @roster[grade]    
    end

    def sort
        @roster.each do |k, v|
            @roster[k] = v.sort
        end
    end
end
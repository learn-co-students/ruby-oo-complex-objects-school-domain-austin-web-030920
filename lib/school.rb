# code here!
require 'pry'
class School
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # binding.pry
        @roster.each do |(key, value)|
            @roster[key] = value.sort
        end
    end
end
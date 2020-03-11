require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
       (@roster[grade] ||= []) << name
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |value, keys|
           sorted_roster[value] = keys.sort
        end
        sorted_roster
    end
end
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        # if grade key doesn't exist then set to []
        ( @roster[grade] ||= [] ) << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        result = {}
        roster.each do |grade, students|
            result[grade] = students.sort
        end
        result
    end
end
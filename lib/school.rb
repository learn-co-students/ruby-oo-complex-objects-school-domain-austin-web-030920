class School
    attr_accessor :school_name, :roster


    def initialize(name)
        @school_name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade]
            roster[grade] << student
        else
            roster[grade] = []
            roster[grade] << student
        end
        roster
    end

    def grade(gr)
        roster[gr]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end

end
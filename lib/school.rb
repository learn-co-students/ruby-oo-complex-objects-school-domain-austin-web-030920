# code here!

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        (@roster[grade] ||= []) << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.map{|k,v| v.sort!}
        @roster
    end
end
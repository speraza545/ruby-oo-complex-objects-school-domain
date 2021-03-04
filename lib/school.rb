# code here!

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student
        else 
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        roster[grade]
    end
    def sort
        sorted_students = {}
        @roster.map do |key, values|
            sorted_students[key] = values.sort
        end
        sorted_students
    end

end
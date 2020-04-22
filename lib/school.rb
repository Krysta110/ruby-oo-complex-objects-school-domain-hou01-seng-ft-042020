# code here!
require 'pry'

class School

    attr_accessor :name, :grade, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    def add_student(name, grade)
        @name = name
        @grade = grade
    
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end

    end

    def grade(grade)
        @roster.each do |k,v|
            if k == grade
                return v
            end
        end
    end

    def sort
        sorted_hash = {}
        @roster.each do |k,v|
            sorted_hash[k] = v.sort
        end
        return sorted_hash
    end




end

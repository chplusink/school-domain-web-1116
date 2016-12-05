require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(student_name, grade_level)
    @student_name = student_name
    @grade_level = grade_level
    roster[grade_level] = [] if roster[grade_level] == nil
    roster[grade_level] << student_name
  end

def grade(grade)
  roster[grade]
end

def sort
  # hash = {}
  roster.collect do |key, value|
    roster[key] = value.sort
  end.sort
  roster
end
end


school = School.new("Bayside High School")

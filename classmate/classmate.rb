class Student

#attr_accessor :student_name, :cohort

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort
end


def get_student_name
  return @student_name
end


def get_cohort
  return @cohort
end

def set_student_name(name)
  @student_name = name
end

def set_cohort(cohort)
  @cohort = cohort
end

def talk
  return "I can talk!"
end

def say_favourite_language(language)
  return "I love #{language}"
end

end

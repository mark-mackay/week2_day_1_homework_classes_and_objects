require('minitest/autorun')
require('minitest/rg')
require_relative('../classmate.rb')

class TestClassmate < MiniTest::Test


def test_get_student_name
  student = Student.new('Dave', 'E28')
  result = student.get_student_name
  assert_equal('Dave', result)
end

def test_get_cohort
  student = Student.new('Dave', 'E28')
  result = student.get_cohort
  assert_equal('E28', result)
end

def test_set_student_name
  student = Student.new('Dave', 'E28')
  student.set_student_name('David')
  result = student.get_student_name
  assert_equal('David', result)
end

def test_set_cohort
  student = Student.new('Dave', 'E28')
  student.set_cohort('G10')
  result = student.get_cohort
  assert_equal('G10', result)
end

def test_student_talk
  student = Student.new('Dave', 'E28')
  result = student.talk
  assert_equal('I can talk!',result)
end

def test_say_favourite_language__ruby
  student = Student.new('Dave', 'E28')
  result = student.say_favourite_language('Ruby')
  assert_equal('I love Ruby', result)
end

end
